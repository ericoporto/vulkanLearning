cmake_minimum_required(VERSION 3.16)
project(vulkanLearning)

set(CMAKE_CXX_STANDARD 17)
find_package(Vulkan REQUIRED)

add_subdirectory(lib/glfw-3.3.2)
SET(GLM_TEST_ENABLE OFF CACHE BOOL "GLM Build unit tests")
add_subdirectory(lib/glm-0.9.9.6      EXCLUDE_FROM_ALL)

# more info on file operations https://cmake.org/cmake/help/latest/command/file.html
FILE(MAKE_DIRECTORY "${CMAKE_BINARY_DIR}/shaders")
FILE(COPY shaders/frag.spv DESTINATION "${CMAKE_BINARY_DIR}/shaders/")
FILE(COPY shaders/vert.spv DESTINATION "${CMAKE_BINARY_DIR}/shaders/")

# if you want to build the hello vulkan instead, replace below by 0_hello_vulkan_main.cpp
add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} glfw ${GLFW_LIBRARIES} Vulkan::Vulkan)