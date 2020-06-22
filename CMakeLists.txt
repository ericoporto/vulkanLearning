cmake_minimum_required(VERSION 3.16)
project(vulkanLearning)

# Remember to set the VULKAN_SDK env variable
#VULKAN_SDK=/home/username/git/vulkanLearning/external/vulkansdk-linux-x86_64/1.2.141.2/x86_64

set(CMAKE_CXX_STANDARD 17)
find_package(Vulkan REQUIRED)

add_subdirectory(lib/glfw-3.3.2)
SET(GLM_TEST_ENABLE OFF CACHE BOOL "GLM Build unit tests")
add_subdirectory(lib/glm-0.9.9.6      EXCLUDE_FROM_ALL)

FILE(MAKE_DIRECTORY "${CMAKE_BINARY_DIR}/shaders")
FILE(COPY shaders/frag.spv DESTINATION "${CMAKE_BINARY_DIR}/shaders/")
FILE(COPY shaders/vert.spv DESTINATION "${CMAKE_BINARY_DIR}/shaders/")

# if you want to build the hello vulkan instead, replace below by 0_hello_vulkan_main.cpp
add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} glfw ${GLFW_LIBRARIES} Vulkan::Vulkan)