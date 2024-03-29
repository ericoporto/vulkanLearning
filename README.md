# vulkanLearning
personal repository for learning vulkan, non reusable stuff, just following [vulkan-tutorial.com](https://vulkan-tutorial.com/).

![](images/spock.gif)

Note: [the tutorial follows the Vulkan 1.0 spec mostly](https://www.khronos.org/registry/vulkan/specs/1.0/html/)

This repository is set up for CLion 2020.1.2 on Ubuntu 20.04. Install following dependencies:

    sudo apt install vulkan-validationlayers-dev libvulkan-dev vulkan-tools
    
## Why these packages

On Ubuntu 20.04 Focal Fossa, I could only make the validation layers work after installing them at system level. 
After a lot of pain I gave up on using the LunarG SDK, instead I am getting everything from the apt repository too. 

GLFW and GLM are in the repo itself, because I imagine if I were to develop a cross-platform application, I would add them
in the project to save the headache of dealing with multiple different package managers in different systems for things 
not vulkan. 

The package `vulkan-tools` is needed for command-line utilities, most importantly vulkaninfo and vkcube, which are useful to confirm my machine is Vulkan-capable.
The package `libvulkan-dev` installs the Vulkan loader.

***WARNING:*** *never reinstall* `libvulkan1`, a ton of things depends on it and when I tried it blew up my system, so if 
the above doesn't work, be patient and look for help.    

---

## Running and developing

On CLion, install the [GLSL Support](https://plugins.jetbrains.com/plugin/6993-glsl-support) plugin from the marketplace.
This will make it easier to write *.frag and *.vert files (fragment and vertex shaders).

The `shaders/compile.sh` script uses `glslc` to build the spirv shaders.

Don't install [shaderc](https://github.com/google/shaderc), it packages too much unneeded stuff. On Ubuntu I instead downloaded the [binaries](https://storage.googleapis.com/shaderc/badges/build_link_linux_clang_release.html)
and picked only the `glslc` binary and placed it under `/usr/local/`. You can get the  [**`glslc ↓`**](https://drive.google.com/uc?export=download&confirm=c8GS&id=1koFW-DJjkRWG5IMBVgz7rsDUaZRIWVyP)  I used too.

![](images/the_triangle.png)

*the triangle*

It's very easy to write wrong valid shader code in glsl, so if things don't work when you are following the tutorial, triple check your shader code. It took me two days to find out I switched an `in` for an `out` in my code, that silently broke everything.

## Additional Help

- https://www.youtube.com/watch?v=x2SGVjlVGhE
