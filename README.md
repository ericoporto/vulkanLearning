# vulkanLearning
personal repository for learning vulkan, non reusable stuff, just following [vulkan-tutorial.com](https://vulkan-tutorial.com/).

![](images/spock.gif)

Note: [the tutorial follows the Vulkan 1.0 spec mostly](https://www.khronos.org/registry/vulkan/specs/1.0/html/)

This repository is set up for CLion 2020.1.2 on Ubuntu 20.04

- You need to download the latest Vulkan SDK from: [vulkan.lunarg.com/sdk/home#linux](https://vulkan.lunarg.com/sdk/home#linux)
  - at the time of this writing it's [vulkansdk-linux-x86_64-1.2.141.2.tar.gz](https://vulkan.lunarg.com/sdk/home#sdk/downloadConfirm/1.2.141.2/linux/vulkansdk-linux-x86_64-1.2.141.2.tar.gz)
  - I used the directory `external` in this project to place the SDK. The SDK is huge, which is why I have not commited 
  it.
- Then go into "Settings -> [Build,Execution, Deployment] CMake -> Environment" and set the `VULKAN_SDK` environment 
variable there. 
- If you are on on the same SDK I am using that environment variable may be already correctly configured, it should 
point the `x86_64` dir inside the SDK.

On Ubuntu 20.04 Focal Fossa, could only make the validation layers work after installing at system level with:

    sudo apt install vulkan-validationlayers-dev

On CLion, install the [GLSL Support](https://plugins.jetbrains.com/plugin/6993-glsl-support) plugin from the marketplace.
This will make it easier to write *.frag and *.vert files (fragment and vertex shaders).

To install [shaderc](https://github.com/google/shaderc) on Ubuntu, I downloaded the [binaries](https://storage.googleapis.com/shaderc/badges/build_link_linux_clang_release.html)
and placed the files (`bin`,`include`,`lib` and `share`) under `/usr/local/`.
