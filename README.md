# Docker armhf Hello Portable

This is a little experiment for a cross-compiled Docker image.

Initially, I tried to run the hello-world image on a BeagleBone Black, but the
default image is built for x86 architecture, whereas the BBB uses an ARM CPU.

For my next step, I tried to build and run my own 'hello' image directly on the
BBB, which worked (as soon as I understood that I had to statically compile my
little C program). But my main development machines have Intel CPUs, so I tried
to create an image which could be built on both Intel and ARM machines.

The trick relies upon naive detection of the build machine architecture using
the `arch` command. Thus, on Intel machines, a cross-compilation toolchain will
be used, whereas the default toolchain will be used when building on the target.


