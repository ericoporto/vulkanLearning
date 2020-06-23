#!/bin/bash

HERE="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

path_to_glslc=$(which glslc)
if ! [ -x "$path_to_glslc" ] ; then
    echo "Can\'t find glslc. Have you installed it?"
    exit
fi

glslc "${HERE}/shader.vert" -o "${HERE}/vert.spv"
glslc "${HERE}/shader.frag" -o "${HERE}/frag.spv"