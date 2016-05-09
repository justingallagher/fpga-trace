# FPGA-Trace

An FPGA accelerated ray tracer, implemented in C++ and using High Level Synthesis (HLS) for hardware design, running on the Xilinx Zedboard SoC.
This project will use FPGA hardware to encode triangle intersection tests on a scene, allowing for reduced energy usage. I will compare the energy efficiency of SIMD and FPGA accelerated implementations in terms of energy and speed per triangle intersection.

## Background

Ray tracing is a rendering method capable of producing very accurate images on a large scene.
By simulating the travel of photons into a viewpoint, effects like reflection, refraction, and subsurface scattering can be easily implemented.
In addition, the algorithm has massive potential for parallization, as the path of each ray is independent of the others.

However, this procedure is notoriously intensive, due to the high number of computations required for just a single ray. This ray needs to be tested against the polygons present in a scene to see if it intersects, and must continue to be traced when reflected or refracted through a material. As a full image could potentially have millions of pixels, rendering a scene typically takes seconds or even minutes, making ray-tracing in real-time inefficient with current methods.

In this project, I attempt to significantly improve the efficency of this method by offloading the most intensive portion, triangle collision testing, to an FPGA. This will provide much lower energy consumption for the same operations, lowering cost to run the ray-tracing algorithm.
Using HLS features will allow me to quickly iterate on my hardware design, allowing hardware operations to be written in C syntax.

## Challenge

* Gain an understanding of how FPGAs work, and how they can be applied for practical use.
* Encode triangle collision detection processing for a scene in an FPGA
* Allow the CPU and FPGA to work together with minimal overhead
* Compare energy consumption in a CPU and FPGA for similar operations
* Accelerate ray tracer performance as much as possible

## Resources

* Xilinx Zedboard SoC, with onboard FPGA and 2-core ARM processor
* Operating System: [Modified version of Xillinux](https://github.com/bperez77/zynq_linux) with [AXI DMA driver](https://github.com/bperez77/zynq_linux), provided by Brandon Perez
* Starter code: A single threaded CPU ray tracer in C++ (implemented for 15-462 Computer Graphics)

## Goals

* Perform triangle intersections with 10x less energy cost compared to the single threaded CPU implementation.
* Perform triangle intersections with comparable speed to the CPU implementation (within 2x).
* Reach goal: Render images featuring over 1000 triangles, reflection, and refraction at 1024x720 in less than 5 seconds.
* Reach goal: Further parallelize with multiple FPGAs, multithreaded CPU controller, etc.

## Platform

Using an FPGA is appropriate for ray tracing as the algorithm requires repeated math operations which are quite simple, but need to be done quickly and in parallel. An FPGA can provide performance improvments even superior to GPU acceleration, but much more cost effectively. As this application is naturally parallel, and involves pure mathematics, encoding this calculation in hardware should be relatively basic, especially when taking advantage of HLS.

## Checkpoint

### Progress

Due to delays in acquiring the Zedboard, my schedule has been adjusted backward. I received the board on Wednesday April 13th, and have since been hard at work getting it up and running.
Firstly, I downloaded, compiled and installed the [custom version of Xillinux](https://github.com/bperez77/zynq_linux/wiki) I'm using onto the board. In addition, I've set up the board for remote work over SSH, which significantly speeds up development time.
This design also allows for easy programming of the FPGA, as I will just need to replace a file at the root of the board's SD card which will be automatically programmed to the FPGA on boot.

In addition, I've completed the port of the 15-462 ray-tracer to ARM, allowing it to run in headless mode identically on the Zedboard as it does on x86 processors, tested on all scenes I will use to benchmark.
The port takes advantage of OpenMP to parallelize ray casting, allowing it to run in multiple threads on the dual core processor.
The next step will be to incorporate SIMD into this design, as this processor also supports double-wide SIMD instructions.

Now that I have access to the board (and have spent some time clearing my schedule of other commitments), I will be able to significantly accelerate my progress. I'm confident that I should be able to hit my targets going forward.

### Deliverables

For the parallelism contest, I intend analyze my program in many configurations: single-threaded CPU, multi-threaded CPU, SIMD-accelerated CPU, and FPGA-accelerated.
For each configuration, I will measure the latency of a single triangle intersection, the throughput of triangle intersections, and the energy consumption per intersection.
I will present a by-scene analysis of runtime and energy efficiencies for each configuration, and determine under which circumstances the FPGA-accelerated version has an advantage over the others.

### Concerns

My major concern is that designing for the FPGA will be more difficult than anticipated.
To combat this, I'll be able to use the examples provided by the system driver I'm using to interact between the ARM processor and the FPGA, as well as lean on the support I have from students more experienced with FPGA programming.
In addition, unforeseen bugs may cause unexpected delays.
I've already experienced this, with a bug in gcc's automatically generated assignment constructor causing the ray tracer to fail when code optimization is enabled.

## Schedule

Wednesday April 13:

* Acquire Zedboard FPGA (DONE)

Tuesday April 19 (Checkpoint):

* Install Xillinux and set up board for SSH (DONE)
* Port ray-tracer to ARM (DONE)

Friday April 22:

* Update ray-tracer with SIMD acceleration
* Benchmark ARM ray-tracer, recording (with and without SIMD):

1. Average rendering time for each scene
2. Average latency for a single triangle intersection
3. Throughput of triangle intersections

Monday April 26:

* Test FPGA with basic logic controlled from the ARM processor (LED blink, adder, etc)

Friday April 29:

* Implement intersection for one triangle in FPGA
* Integrate FPGA triangle intersection logic with ARM ray tracer

Monday May 1:

* Allow simultaneous intersections for many triangles in FPGA

Friday May 6:

* Benchmark FPGA accelerated ray tracer, using metrics above

Monday May 9:

* Continue optimizing and benchmarking performance for all scenes
