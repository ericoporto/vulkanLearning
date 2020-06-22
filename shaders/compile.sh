#!/bin/bash
path_to_glslc=$(which glslc)
if ! [ -x "$path_to_glslc" ] ; then
    echo "Can\'t find glslc. Have you installed it?"
    exit
fi

glslc shader.vert -o vert.spv
glslc shader.frag -o frag.spv