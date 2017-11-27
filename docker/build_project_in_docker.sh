#!/bin/bash

DOCKER_IMAGE=$USER/gcc-cmake-gl

# xhost +
#

mkdir -p build/

# -e DISPLAY=unix$DISPLAY \
# -v /tmp/.X11-unix:/tmp/.X11-unix \
docker run \
        -it \
        --rm \
        --name DNA \
        -e NEWUSER=$USER \
        -v $(realpath build/):/DNA/build \
        -v $(realpath .):/DNA \
        -w /DNA \
        ${DOCKER_IMAGE} \
        bash -c "cd build && cmake . .. && make -j"

# TODO: fix right issues
sudo chown $USER:$USER -R build/

#
# xhost -