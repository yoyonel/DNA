cmake_minimum_required(VERSION 3.0.2)
project(DNA)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/CMakeModules/")

find_package(OpenGL REQUIRED)
find_package(FREEGLUT REQUIRED)

if(NOT ${OPENGL_FOUND})
    message("OPENGL not found")
endif()

set(PROJECT_SOURCE_DIR src/)
set(PROJECT_NAME DNA)

include_directories(
    ${PROJECT_SOURCE_DIR}
    ${FREEGLUT_INCLUDE_DIR}
    ${OPENGL_INCLUDE_DIR}
    )

message(${OPENGL_INCLUDE_DIR})
add_executable(
	${PROJECT_NAME}  
	${PROJECT_SOURCE_DIR}/dna.cpp
) 

target_link_libraries(
	${PROJECT_NAME} 
	${OPENGL_LIBRARY}
	${FREEGLUT_LIBRARY}
)