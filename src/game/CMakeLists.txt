file(GLOB_RECURSE Q4_GAME_SOURCES CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp
)

# Callbacks.cpp is generated-style source text included by gamesys/Class.cpp;
# it is not a standalone translation unit in the Quake 4 SDK project.
list(REMOVE_ITEM Q4_GAME_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/gamesys/Callbacks.cpp
)

add_library(gamex86 SHARED
    ${Q4_GAME_SOURCES}
    ${PROJECT_SOURCE_DIR}/framework/DeclPlayerModel.cpp
)

target_include_directories(gamex86 PRIVATE
    ${PROJECT_SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/game
    "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Include"
)

target_compile_definitions(gamex86 PRIVATE
    WIN32
    _WINDOWS
    _LOAD_DLL
    _USE_32BIT_TIME_T
    GAME_DLL
    Q4SDK
	Q4_RECON_RETAIL_UI_MANAGER_ABI
    Q4_NO_PUNKBUSTER
    $<$<CONFIG:Debug>:_DEBUG>
    $<$<CONFIG:Release>:NDEBUG;_FINAL>
)

target_link_libraries(gamex86 PRIVATE q4_game_idlib winmm)

if(MSVC)
    target_compile_options(gamex86 PRIVATE /Zi)
    target_link_options(gamex86 PRIVATE
        /DEF:${CMAKE_CURRENT_SOURCE_DIR}/game.def
        /DEBUG:FULL
        /PDB:E:/projects/Quake4Alpha/q4base/gamex86.pdb
    )
endif()

set_target_properties(gamex86 PROPERTIES
    OUTPUT_NAME gamex86
    PREFIX ""
    RUNTIME_OUTPUT_DIRECTORY "E:/projects/Quake4Alpha/q4base"
    RUNTIME_OUTPUT_DIRECTORY_DEBUG "E:/projects/Quake4Alpha/q4base"
    RUNTIME_OUTPUT_DIRECTORY_RELEASE "E:/projects/Quake4Alpha/q4base"
    LIBRARY_OUTPUT_DIRECTORY "E:/projects/Quake4Alpha/q4base"
    ARCHIVE_OUTPUT_DIRECTORY "E:/projects/Quake4Alpha/q4base"
    PDB_OUTPUT_DIRECTORY "E:/projects/Quake4Alpha/q4base"
    FOLDER "Game"
)
