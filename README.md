# FPGA-Trace

An FPGA accelerated ray tracer, implemented in C++ and VHDL.
This project will use FPGA hardware to encode triangle intersection tests on a scene, allowing for massive parallelism and reduced latency.

## Background

Ray tracing is a rendering method capable of producing very accurate images on a large scene.
By simulating the travel of photons into a viewpoint, effects like reflection, refraction, and subsurface scattering can be easily implemented.
In addition, the algorithm has massive potential for parallization, as the path of each ray is independent of the others.

However, this procedure is notoriously slow, due to the high number of computations required for just a single ray. This ray needs to be tested against the polygons present in a scene to see if it intersects, and must continue to be traced when reflected or refracted through a material. As a full image could potentially have millions of pixels, rendering a scene typically takes seconds or even minutes, making ray-tracing in real-time impractical with current methods.

In this project, I attempt to significantly accelerate this method by offloading the most intensive portion, triangle collision testing, to an FPGA. An FPGA will also be able to simultaneously test many triangles on the same input, further improving performance.

## Challenge

* Gain an understanding of how FPGAs work, and how they can be applied for practical use.
* Encode triangle collision detection processing for a scene in an FPGA
* Allow the CPU and FPGA to work together with minimal overhead
* Accelerate ray tracer performance as much as possible

## Resources

* Intel i7-4790K CPU (4 cores at 4.0 GHz)
* FPGA (exact model TBD)
* Starter code: A single threaded CPU ray tracer in C++ (implemented for 15-462 Computer Graphics)

## Goals

* Render ray-traced images at a speed 10x the single threaded CPU implementation.
* Render images featuring over 1000 triangles, reflection and refraction at 1024x720 resolution in less than 1 second.
* Reach goal: Render images featuring over 1000 triangles, reflection, and refraction at 1024x720 in real time at 15fps.
* Reach goal: Further parallelize with multiple FPGAs, multithreaded CPU controller, etc.

## Platform

Using an FPGA is appropriate for ray tracing as the algorithm requires repeated math operations which are quite simple, but need to be done quickly and in parallel. An FPGA can provide performance improvments even superior to GPU acceleration, but much more cost effectively.

## Schedule

Friday April 8: 

* Create benchmark scenes
* Review and benchmark CPU implementation
* Acquire FPGA and implement basic logic that can be inferfaced with from C++ (LED blink, adder, etc)

Friday April 15 (Checkpoint):

* Implement intersection for one triangle in FPGA
* Benchmark rendering a single triangle on FPGA vs CPU

Friday April 22:

* Encode scene in FPGA
* Render and benchmark one full scene with FPGA acceleration

Friday April 29:

* Render and benchmark multiple scenes with FPGA acceleration

Friday May 6:

* Optimize and benchmark performance for all scenes
