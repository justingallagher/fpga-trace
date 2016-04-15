#include "photonmap.hpp"
#include "p3/randomgeo.hpp"
#include "p3/util.hpp"
namespace _462 {
PhotonMap::PhotonMap(){
    all_raw_photons = NULL;
//    photons=NULL;
    geometry_array=0;
    geometry_array_size=0;
}
void PhotonMap::initialize(Scene *scene){
    this->scene=scene;
    send_photons();
}
/**
    Traces a photon through the scene, recording inside result
 */
void PhotonMap::trace_photon(std::vector<Photon> &result,Color3 color,Ray ray,int depth){
    
}
void shift_buffer(std::vector<Photon> *source,std::vector<Photon>::iterator &dest,size_t count){
    if(count>source->size()){
        count=source->size();
    }
    assert(count<=source->size());
    dest=std::copy(source->end()-count,source->end(),dest);
    size_t newsize=source->size()-count;
    source->resize(newsize);
    source->shrink_to_fit();
}
void PhotonMap::send_photons(){
    printf("Each photon used %ld bytes\n",sizeof(Photon));
    std::vector<std::vector<Photon> > raw_photons(MAX_THREADS);
#pragma omp parallel for
    for(unsigned int j=0;j<MAX_THREADS;j++){
        raw_photons[j].reserve(scene->num_lights()*PHOTON_COUNT*(MAX_PHOTON_DEPTH+1));
        for(unsigned int i=0;i<scene->num_lights();i++){
            SphereLight light = scene->get_lights()[i];
            Color3 c=light.color;
            real_t prob=montecarlo(c);
            unsigned int photonCount=PHOTON_COUNT*prob/MAX_THREADS;
            printf("Sending %d photons.\n",photonCount);
            for(unsigned int k=0;k<photonCount;k++){
                Ray ray;
                ray.d = random_sphere_indexed(k,photonCount);
                ray.e = light.position+random_sphere()*light.radius;
                trace_photon(raw_photons[j],c,ray,MAX_PHOTON_DEPTH);
            }
        }
    }
    std::vector<size_t> offsets(raw_photons.size());
    size_t total=0;
    for(size_t i=0;i<raw_photons.size();i++){
        offsets[i]=total;
        total+=raw_photons[i].size();
        raw_photons[i].shrink_to_fit();
    }
    printf("Made %ld photons\n",total);
    delete all_raw_photons;
    all_raw_photons = new std::vector<Photon>(total);
    for(size_t i=0;i<raw_photons.size();i++){
        std::vector<Photon>::iterator dest=all_raw_photons->begin()+offsets[i];
        while(raw_photons[i].size()>0){
            assert(dest<all_raw_photons->end());
            //rough attempt at page-aligning during copy
            size_t copySize=1024*1024;
            size_t extra=raw_photons[i].size()%copySize;
            if(extra!=0){
                copySize=extra;
            }
            shift_buffer(&(raw_photons[i]),dest,copySize);
        }
    }
    printf("Collected %ld photons\n",all_raw_photons->size());
    //TODO: organize the photons into some sort of kd-tree
}
void organizePhotons(){
    
}
void PhotonMap::update_photons(){
    if(!geometry_array){
        glGenBuffers(1, &geometry_array);
        assert(geometry_array);
    }
    float *temp = new float[all_raw_photons->size()*6];
    for(size_t i=0;i<all_raw_photons->size();i++){
        Vector3 pos=(*all_raw_photons)[i].position();
        Vector3 norm=(*all_raw_photons)[i].normal();
        pos+=norm*0.01;
        temp[6*i]=  pos.x;
        temp[6*i+1]=pos.y;
        temp[6*i+2]=pos.z;
        Color3 color=(*all_raw_photons)[i].color();
        temp[6*i+3]=color.r;
        temp[6*i+4]=color.g;
        temp[6*i+5]=color.b;
    }
    glBindBuffer(GL_ARRAY_BUFFER, geometry_array);
    glGetError();
    glBufferData(GL_ARRAY_BUFFER, all_raw_photons->size()*6*sizeof(GLfloat), temp, GL_STATIC_DRAW);
    GLenum err=glGetError();
    if(err){
        std::cout << "Error allocating opengl photon map : " << gluErrorString(err) << std::endl;
    }else{
        std::cout << "Allocated opengl photon map" << std::endl;
    }
    geometry_array_size=all_raw_photons->size();
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    delete[] temp;
}
void PhotonMap::render_photons(){
    if(geometry_array_size>0){
        glEnableClientState(GL_VERTEX_ARRAY);
        glEnableClientState(GL_COLOR_ARRAY);
        glBindBuffer(GL_ARRAY_BUFFER, geometry_array);
        glVertexPointer(3, GL_FLOAT, 6*sizeof(float), sizeof(float)*0);
        glColorPointer(3, GL_FLOAT, 6*sizeof(float), (float*)(sizeof(float)*3));
        size_t n = geometry_array_size;
        glDrawArrays(GL_POINTS,0,n);
        glDisableClientState(GL_VERTEX_ARRAY);
        glEnableClientState(GL_COLOR_ARRAY);
        glBindBuffer(GL_ARRAY_BUFFER, 0);
    }
}
}