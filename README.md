# CppAsmInterop
This sample project shows how to setup your CMake build system in order to be able to call
asm code from your C++ code. Tested on Windows with ``NASM`` assembler and ``msvc`` compiler.
I expect such approach can work with other compilers, assemblers, and operating systems.

# Build
To build this, you should have:
- Windows OS
- msvc
- NASM

If so, then just simple do this:
```
mkdir build
cd build cmake ..
cmake --build .
```

The program will print "Hello, World" in Windows's debug system.
