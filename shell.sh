#!/bin/bash

comp=gcc
src=src/*.c
exe=TheHole
std=-std=c99

flags=(
    $std
    -Wall
    -O2
)

inc=(
    '-I.'
    '-Isrc/'
    '-Iinclude/GLFW/'
    '-Iinclude/FreeType/'
    '-Iinclude/FMOD/'
    '-Iinclude/libpng/'
    '-Llib/'
)

lib=(
    -framework OpenGL
    -lglfw
    -lpng
    -lfreetype
    -lfmod
)

compile() {
    $comp ${flags[*]} ${inc[*]} ${lib[*]} $src -o $exe
}

execute() {
    ./$exe "$@"
}

fail() {
    echo "Use 'comp' to compile, 'exe' to execute or 'run' to do both."
    exit
}

if [[ $# -eq 0 ]]
then
    fail
fi

if [[ "$1" == "run" ]]
then
    shift
    compile
    execute "$@"
elif [[ "$1" == "comp" ]]
then
    compile
elif [[ "$1" == "exe" ]]
then
    shift
    execute "$@"
else
    fail
fi
