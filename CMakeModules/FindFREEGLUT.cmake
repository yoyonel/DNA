# Try to find the FREEGLUT library
#
# FREEGLUT_INCLUDE_DIR
# FREEGLUT_LIBRARY
# FREEGLUT_FOUND

FIND_PATH(
  FREEGLUT_INCLUDE_DIR GL/freeglut.h GL/gl.h GL/glu.h GL/glew.h
  ${CMAKE_INCLUDE_PATH}
  $ENV{include}
  ${OPENGL_INCLUDE_DIR}
  /usr/include
  /usr/local/include
)

SET(STORE_CMAKE_FIND_FRAMEWORK ${CMAKE_FIND_FRAMEWORK})
SET(CMAKE_FIND_FRAMEWORK NEVER)

FIND_LIBRARY(
  FREEGLUT_LIBRARY
  NAMES freeglut_static freeglut glut GL
  PATH
    /opt/local/lib
    ${CMAKE_LIBRARY_PATH}
    $ENV{lib}
    /usr/lib
    /usr/local/lib
)

SET(CMAKE_FIND_FRAMEWORK ${STORE_CMAKE_FIND_FRAMEWORK})
