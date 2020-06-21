# vulkanLearning
personal repository for learning vulkan, non reusable stuff, just following [vulkan-tutorial.com](https://vulkan-tutorial.com/).

This repository is set up for CLion 2020.1.2 on Ubuntu 20.04

- You need to download the latest Vulkan SDK from: [vulkan.lunarg.com/sdk/home#linux](https://vulkan.lunarg.com/sdk/home#linux)
  - at the time of this writing it's [vulkansdk-linux-x86_64-1.2.141.2.tar.gz](https://vulkan.lunarg.com/sdk/home#sdk/downloadConfirm/1.2.141.2/linux/vulkansdk-linux-x86_64-1.2.141.2.tar.gz)
  - I used the directory `external` in this project to place the SDK. The SDK is huge, which is why I have not commited 
  it.
- Then go into "Settings -> [Build,Execution, Deployment] CMake -> Environment" and set the `VULKAN_SDK` environment 
variable there. 
- If you are on on the same SDK I am using that environment variable may be already correctly configured, it should 
point the `x86_64` dir inside the SDK.
