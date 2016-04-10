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

## Schedule

Monday April 11: 

* Acquire FPGA and implement basic logic that can be inferfaced with from C++ (LED blink, adder, etc)
* Port ray-tracer to ARM and use SIMD to accelerate execution
* Benchmark ray-tracer performance on CPU

Tuesday April 19 (Checkpoint):

* Implement intersection for one triangle in FPGA
* Benchmark rendering a single triangle on FPGA vs CPU

Monday April 26:

* Encode scene in FPGA
* Render and benchmark one full scene with FPGA acceleration

Monday May 1:

* Render and benchmark multiple scenes with FPGA acceleration

Friday May 6:

* Optimize and benchmark performance for all scenes
