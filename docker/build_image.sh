#!/bin/bash

DOCKER_IMAGE=$USER/gcc-cmake-gl

docker build -t $DOCKER_IMAGE .