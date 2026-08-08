cmake_minimum_required(VERSION 3.25)

project(Quake4Reconstruction LANGUAGES C CXX)

if(NOT WIN32)
    message(FATAL_ERROR "The initial reconstruction target is 32-bit Windows")
endif()

if(NOT CMAKE_SIZEOF_VOID_P EQUAL 4)
    message(FATAL_ERROR "Configure with a Win32/x86 generator; the recovered ABI is 32-bit")
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

option(Q4_BUILD_IDLIB "Build the Quake 4 SDK idlib seed" ON)
option(Q4_BUILD_ENGINE_SEED "Compile the PDB-proven Doom engine seed" ON)
option(Q4_BUILD_GAME_DLL "Build the Quake 4 single-player game DLL" ON)
option(Q4_BUILD_RECON_TOOLS "Build reconstruction inventory tools" ON)

if(MSVC)
    add_compile_definitions(_CRT_SECURE_NO_WARNINGS _CRT_NONSTDC_NO_DEPRECATE)
    # The target was built by VC 7.1. Keep its language behavior while using a
    # current compiler; stricter conformance is enabled only after ABI parity.
    add_compile_options(/W3 /MP /permissive /Zc:strictStrings- /Zc:forScope-)
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif()

if(Q4_BUILD_IDLIB)
    add_subdirectory(idlib)
endif()

if(Q4_BUILD_ENGINE_SEED)
    add_subdirectory(engine)
endif()

if(Q4_BUILD_GAME_DLL)
    add_subdirectory(game)
endif()

if(Q4_BUILD_RECON_TOOLS)
    add_subdirectory(tools/reconstruction)
endif()

enable_testing()
