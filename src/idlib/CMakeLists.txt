# This is the exact first-party idlib compiland set recorded in quake4.pdb.
# Additional SDK files remain in the tree for the game DLLs but are not linked
# into the reconstructed executable until evidence assigns them to the target.
set(Q4_IDLIB_SOURCES
    BitMsg.cpp
    CmdArgs.cpp
    Dict.cpp
    Heap.cpp
    LangDict.cpp
    Lexer.cpp
    LexerFactory.cpp
    Lib.cpp
    mapfile.cpp
    Parser.cpp
    Str.cpp
    Timer.cpp
    Token.cpp
    bv/Bounds.cpp
    bv/Box.cpp
    bv/Frustum.cpp
    bv/Sphere.cpp
    containers/HashIndex.cpp
    geometry/JointTransform.cpp
    geometry/Surface.cpp
    geometry/Surface_Patch.cpp
    geometry/TraceModel.cpp
    geometry/Winding.cpp
    math/Angles.cpp
    math/Math.cpp
    math/Matrix.cpp
    math/Plane.cpp
    math/Polynomial.cpp
    math/Quat.cpp
    math/Radians.cpp
    math/Rotation.cpp
    math/Simd.cpp
    math/Simd_3DNow.cpp
    math/Simd_generic.cpp
    math/Simd_MMX.cpp
    math/Simd_SSE.cpp
    math/Simd_SSE2.cpp
    math/Simd_SSE3.cpp
    math/Vector.cpp
    hashing/CRC32.cpp
    hashing/MD4.cpp
    hashing/MD5.cpp
)

add_library(q4_idlib STATIC ${Q4_IDLIB_SOURCES})

target_include_directories(q4_idlib
    PUBLIC
        ${PROJECT_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}
    PRIVATE
        "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Include"
)

target_compile_definitions(q4_idlib
    PRIVATE
        WIN32
        _WINDOWS
        _LOAD_DLL
        _USE_32BIT_TIME_T
        Q4_NO_PUNKBUSTER
        Q4_RECON_SEED
        Q4_RECON_ENGINE_PRIVATE
        Q4_RECON_SDK_MSGQUEUE
        $<$<CONFIG:Debug>:_DEBUG>
        $<$<CONFIG:Release>:NDEBUG;_FINAL>
)

target_precompile_headers(q4_idlib PRIVATE precompiled.h)

set_target_properties(q4_idlib PROPERTIES
    OUTPUT_NAME idlib
    FOLDER "Engine"
)
