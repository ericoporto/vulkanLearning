#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(location = 0) out vec3 fragColor;

layout(location = 1) out vec4 outColor;

void main() {
    outColor = vec4(fragColor, 1.0);
}