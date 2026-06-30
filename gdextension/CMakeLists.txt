cmake_minimum_required(VERSION 3.12)

project(gdextension)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_subdirectory(godot-cpp)
set_target_properties(godot-cpp PROPERTIES
	CXX_VISIBILITY_PRESET hidden
)

add_subdirectory(audio-stream-csound)
