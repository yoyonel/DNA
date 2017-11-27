FROM andystanton/gcc-cmake-gl

ENV DEBIAN_FRONTEND noninteractive    # export DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
	apt install -yq \
		freeglut3 freeglut3-dev \
		libglew-dev

WORKDIR /

ENV PROJECT_DIR /DNA

# RUN git clone https://github.com/yoyonel/3D-DNA-Structure-in-OpenGL.git ${PROJECT_DIR}
