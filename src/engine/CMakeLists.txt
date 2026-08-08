function(q4_add_engine_object target)
    add_library(${target} OBJECT ${ARGN})
    target_include_directories(${target}
        PRIVATE
            ${PROJECT_SOURCE_DIR}
            ${PROJECT_SOURCE_DIR}/renderer/jpeg-6
            ${PROJECT_SOURCE_DIR}/sound/OggVorbis/ogg/include
            ${PROJECT_SOURCE_DIR}/sound/OggVorbis/vorbis/include
            "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Include"
    )
    target_compile_definitions(${target}
        PRIVATE
            WIN32
            _WINDOWS
            _LOAD_DLL
            _USE_32BIT_TIME_T
            Q4_NO_PUNKBUSTER
            Q4_RECON_SEED
            Q4_DISABLE_TOOLS
            Q4_DISABLE_GL_LOGGING
            Q4_DISABLE_TASKKEY_HOOK
            $<$<CONFIG:Debug>:_DEBUG>
            $<$<CONFIG:Release>:NDEBUG;_FINAL>
    )
    set_target_properties(${target} PROPERTIES FOLDER "Engine/Seed")
endfunction()

file(GLOB_RECURSE Q4_AAS_SOURCES CONFIGURE_DEPENDS
    ${PROJECT_SOURCE_DIR}/aas/*.cpp
)
set(Q4_AAS_FILE_SOURCE ${PROJECT_SOURCE_DIR}/aas/AASFile.cpp)

file(GLOB_RECURSE Q4_CM_SOURCES CONFIGURE_DEPENDS
    ${PROJECT_SOURCE_DIR}/cm/*.cpp
)
set(Q4_CM_MODEL_SOURCE ${PROJECT_SOURCE_DIR}/cm/CollisionModel.cpp)
set(Q4_CM_LOAD_SOURCE ${PROJECT_SOURCE_DIR}/cm/collisionmodel_load.cpp)
set(Q4_CM_CONTACTS_SOURCE ${PROJECT_SOURCE_DIR}/cm/collisionmodel_contacts.cpp)
set(Q4_CM_CONTENTS_SOURCE ${PROJECT_SOURCE_DIR}/cm/collisionmodel_contents.cpp)
set(Q4_CM_TRACE_SOURCE ${PROJECT_SOURCE_DIR}/cm/collisionmodel_trace.cpp)
set(Q4_CM_TRANSLATE_SOURCE ${PROJECT_SOURCE_DIR}/cm/collisionmodel_translate.cpp)
list(REMOVE_ITEM Q4_CM_SOURCES ${Q4_CM_MODEL_SOURCE})

file(GLOB Q4_FRAMEWORK_TOP_SOURCES CONFIGURE_DEPENDS ${PROJECT_SOURCE_DIR}/framework/*.cpp)
set(Q4_FRAMEWORK_PLAYER_MODEL_SOURCE ${PROJECT_SOURCE_DIR}/framework/DeclPlayerModel.cpp)
set(Q4_FRAMEWORK_ENGINE_TOP_SOURCES ${Q4_FRAMEWORK_TOP_SOURCES})
# DeclPlayerModel is owned by gamex86.dll in the retail PDB.  Keep it out of
# q4xp.exe so the reconstructed compiland and its allocator live in the same
# module that registers DECL_PLAYER_MODEL.
list(REMOVE_ITEM Q4_FRAMEWORK_ENGINE_TOP_SOURCES ${Q4_FRAMEWORK_PLAYER_MODEL_SOURCE})
set(Q4_FRAMEWORK_SESSION_SOURCES
    ${PROJECT_SOURCE_DIR}/framework/common.cpp
    ${PROJECT_SOURCE_DIR}/framework/session.cpp
    ${PROJECT_SOURCE_DIR}/framework/session_menu.cpp
)
set(Q4_FRAMEWORK_EDITFIELD_SOURCE ${PROJECT_SOURCE_DIR}/framework/editfield.cpp)
set(Q4_FRAMEWORK_CONSOLE_SOURCE ${PROJECT_SOURCE_DIR}/framework/console.cpp)
set(Q4_FRAMEWORK_USERCMD_SOURCE ${PROJECT_SOURCE_DIR}/framework/usercmdgen.cpp)
set(Q4_FRAMEWORK_CONSOLE_SOURCES
    ${Q4_FRAMEWORK_EDITFIELD_SOURCE}
    ${Q4_FRAMEWORK_CONSOLE_SOURCE}
    ${Q4_FRAMEWORK_USERCMD_SOURCE}
)
file(GLOB Q4_FRAMEWORK_ASYNC_SOURCES CONFIGURE_DEPENDS ${PROJECT_SOURCE_DIR}/framework/async/*.cpp)
set(Q4_FRAMEWORK_MSGCHANNEL_SOURCE ${PROJECT_SOURCE_DIR}/framework/async/msgchannel.cpp)
list(REMOVE_ITEM Q4_FRAMEWORK_ASYNC_SOURCES ${Q4_FRAMEWORK_MSGCHANNEL_SOURCE})
set(Q4_FRAMEWORK_CORE_SOURCES ${Q4_FRAMEWORK_ENGINE_TOP_SOURCES})
list(REMOVE_ITEM Q4_FRAMEWORK_CORE_SOURCES
    ${Q4_FRAMEWORK_SESSION_SOURCES}
    ${Q4_FRAMEWORK_CONSOLE_SOURCES}
)

file(GLOB_RECURSE Q4_UI_SOURCES CONFIGURE_DEPENDS
    ${PROJECT_SOURCE_DIR}/ui/*.cpp
)

# Retail quake4.exe renderer compilation units.  Keep this explicit: the PDB
# records one object for each entry and the list doubles as a boundary audit.
set(Q4_RENDERER_SOURCES
    ${PROJECT_SOURCE_DIR}/renderer/Cinematic.cpp
    ${PROJECT_SOURCE_DIR}/renderer/draw_arb.cpp
    ${PROJECT_SOURCE_DIR}/renderer/draw_arb2.cpp
    ${PROJECT_SOURCE_DIR}/renderer/draw_common.cpp
    ${PROJECT_SOURCE_DIR}/renderer/draw_nv10.cpp
    ${PROJECT_SOURCE_DIR}/renderer/draw_nv20.cpp
    ${PROJECT_SOURCE_DIR}/renderer/draw_r200.cpp
    ${PROJECT_SOURCE_DIR}/renderer/GuiModel.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Image_files.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Image_init.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Image_load.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Image_process.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Image_program.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Image_stats.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Interaction.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Material.cpp
    ${PROJECT_SOURCE_DIR}/renderer/MegaTexture.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model.cpp
    ${PROJECT_SOURCE_DIR}/renderer/ModelDecal.cpp
    ${PROJECT_SOURCE_DIR}/renderer/ModelManager.cpp
    ${PROJECT_SOURCE_DIR}/renderer/ModelOverlay.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_ase.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_beam.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_liquid.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_lwo.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_ma.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_md3.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_md5.cpp
    ${PROJECT_SOURCE_DIR}/renderer/Model_sprite.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderEntity.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderSystem.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderSystem_init.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderWorld.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderWorld_demo.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderWorld_load.cpp
    ${PROJECT_SOURCE_DIR}/renderer/RenderWorld_portals.cpp
	${PROJECT_SOURCE_DIR}/renderer/Shaders.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvGLSLShader.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvIndexBuffer.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvMesh.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvPrimBatch.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvRenderModelMD5R.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvSpecial.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvTexRenderTarget.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvVertexBuffer.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvVertexBufferCopy.cpp
    ${PROJECT_SOURCE_DIR}/renderer/rvVertexFormat.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_backend.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_deform.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_font.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_guisurf.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_light.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_lightrun.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_main.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_orderIndexes.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_polytope.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_render.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_rendertools.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_shadowbounds.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_stencilshadow.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_subview.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_trace.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_trisurf.cpp
    ${PROJECT_SOURCE_DIR}/renderer/tr_turboshadow.cpp
    ${PROJECT_SOURCE_DIR}/renderer/VertexCache.cpp
)

# Retail BSE object boundaries recovered from quake4.pdb.
set(Q4_BSE_SOURCES
    ${PROJECT_SOURCE_DIR}/bse/BSE_Bounds.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Effect.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_EffectTemplate.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Electricity.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Envelopes.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Light.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Manager.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_ParseParticle2.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Particle.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Render.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_Segment.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_SegmentTemplate.cpp
    ${PROJECT_SOURCE_DIR}/bse/BSE_SpawnDomains.cpp
)
file(GLOB Q4_JPEG_SOURCES CONFIGURE_DEPENDS ${PROJECT_SOURCE_DIR}/renderer/jpeg-6/*.c)

file(GLOB_RECURSE Q4_SOUND_SOURCES CONFIGURE_DEPENDS ${PROJECT_SOURCE_DIR}/sound/*.cpp)
file(GLOB_RECURSE Q4_OGGVORBIS_SOURCES CONFIGURE_DEPENDS
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/*.c
)

file(GLOB_RECURSE Q4_SYS_SOURCES CONFIGURE_DEPENDS
    ${PROJECT_SOURCE_DIR}/sys/*.cpp
)

q4_add_engine_object(q4_engine_aas_file ${Q4_AAS_FILE_SOURCE})
q4_add_engine_object(q4_engine_aas ${Q4_AAS_SOURCES})
target_compile_definitions(q4_engine_aas PRIVATE Q4_AAS_LEGACY_SEED)
q4_add_engine_object(q4_engine_cm_model ${Q4_CM_MODEL_SOURCE})
target_compile_definitions(q4_engine_cm_model PRIVATE Q4_CM_MODEL_ONLY)
q4_add_engine_object(q4_engine_cm_load ${Q4_CM_LOAD_SOURCE})
q4_add_engine_object(q4_engine_cm_contacts ${Q4_CM_CONTACTS_SOURCE})
q4_add_engine_object(q4_engine_cm_contents ${Q4_CM_CONTENTS_SOURCE})
q4_add_engine_object(q4_engine_cm_trace ${Q4_CM_TRACE_SOURCE})
q4_add_engine_object(q4_engine_cm_translate ${Q4_CM_TRANSLATE_SOURCE})
q4_add_engine_object(q4_engine_cm_seed ${Q4_CM_SOURCES})
target_compile_definitions(q4_engine_cm_seed PRIVATE Q4_CM_LEGACY_SEED)
set(Q4_FRAMEWORK_CORE_TARGETS)
foreach(source IN LISTS Q4_FRAMEWORK_CORE_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    set(target q4_engine_framework_core_${stem})
    q4_add_engine_object(${target} ${source})
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
    list(APPEND Q4_FRAMEWORK_CORE_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_framework_core DEPENDS ${Q4_FRAMEWORK_CORE_TARGETS})
set_target_properties(q4_engine_framework_core PROPERTIES FOLDER "Engine/Seed")
q4_add_engine_object(q4_engine_framework_editfield ${Q4_FRAMEWORK_EDITFIELD_SOURCE})
q4_add_engine_object(q4_engine_framework_console_impl ${Q4_FRAMEWORK_CONSOLE_SOURCE})
q4_add_engine_object(q4_engine_framework_usercmd ${Q4_FRAMEWORK_USERCMD_SOURCE})
add_custom_target(q4_engine_framework_console
    DEPENDS
        q4_engine_framework_editfield
        q4_engine_framework_console_impl
        q4_engine_framework_usercmd
)
set_target_properties(q4_engine_framework_console PROPERTIES FOLDER "Engine/Seed")
set(Q4_FRAMEWORK_ASYNC_TARGETS)
foreach(source IN LISTS Q4_FRAMEWORK_ASYNC_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    set(target q4_engine_framework_async_${stem})
    q4_add_engine_object(${target} ${source})
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
    list(APPEND Q4_FRAMEWORK_ASYNC_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_framework_async DEPENDS ${Q4_FRAMEWORK_ASYNC_TARGETS})
set_target_properties(q4_engine_framework_async PROPERTIES FOLDER "Engine/Seed")
q4_add_engine_object(q4_engine_framework_msgchannel ${Q4_FRAMEWORK_MSGCHANNEL_SOURCE})
target_compile_definitions(q4_engine_framework_msgchannel PRIVATE Q4_RECON_SDK_MSGQUEUE)
q4_add_engine_object(q4_engine_framework_session ${Q4_FRAMEWORK_SESSION_SOURCES})
foreach(target q4_engine_framework_editfield q4_engine_framework_console_impl q4_engine_framework_usercmd q4_engine_framework_session)
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
endforeach()
set(Q4_UI_TARGETS)
foreach(source IN LISTS Q4_UI_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    set(target q4_engine_ui_${stem})
    q4_add_engine_object(${target} ${source})
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
    list(APPEND Q4_UI_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_ui DEPENDS ${Q4_UI_TARGETS})
set_target_properties(q4_engine_ui PROPERTIES FOLDER "Engine/Seed")

set(Q4_RENDERER_TARGETS)
foreach(source IN LISTS Q4_RENDERER_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    set(target q4_engine_renderer_${stem})
    q4_add_engine_object(${target} ${source})
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
    list(APPEND Q4_RENDERER_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_renderer DEPENDS ${Q4_RENDERER_TARGETS})
set_target_properties(q4_engine_renderer PROPERTIES FOLDER "Engine/Seed")
set(Q4_BSE_TARGETS)
foreach(source IN LISTS Q4_BSE_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    string(TOLOWER ${stem} stem_lower)
    set(target q4_engine_bse_${stem_lower})
    q4_add_engine_object(${target} ${source})
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
    list(APPEND Q4_BSE_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_bse DEPENDS ${Q4_BSE_TARGETS})
set_target_properties(q4_engine_bse PROPERTIES FOLDER "Engine/Seed")
q4_add_engine_object(q4_bse_abi ${PROJECT_SOURCE_DIR}/tests/abi/BSE_ABI.cpp)
target_compile_definitions(q4_bse_abi PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
set_target_properties(q4_bse_abi PROPERTIES FOLDER "Reconstruction/ABI")
q4_add_engine_object(q4_renderer_raven_abi ${PROJECT_SOURCE_DIR}/tests/abi/RendererRaven_ABI.cpp)
target_compile_definitions(q4_renderer_raven_abi PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
set_target_properties(q4_renderer_raven_abi PROPERTIES FOLDER "Reconstruction/ABI")
q4_add_engine_object(q4_thirdparty_jpeg ${Q4_JPEG_SOURCES})
target_include_directories(q4_thirdparty_jpeg PRIVATE ${PROJECT_SOURCE_DIR}/renderer/jpeg-6)
set_target_properties(q4_thirdparty_jpeg PROPERTIES FOLDER "ThirdParty")
set(Q4_SOUND_TARGETS)
foreach(source IN LISTS Q4_SOUND_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    set(target q4_engine_sound_${stem})
    q4_add_engine_object(${target} ${source})
    target_include_directories(${target} PRIVATE ${PROJECT_SOURCE_DIR}/sound ${PROJECT_SOURCE_DIR}/sys/win32)
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE Q4_RECONSTRUCTED_SOUND)
    list(APPEND Q4_SOUND_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_sound DEPENDS ${Q4_SOUND_TARGETS})
set_target_properties(q4_engine_sound PROPERTIES FOLDER "Engine/Seed")
q4_add_engine_object(q4_thirdparty_oggvorbis ${Q4_OGGVORBIS_SOURCES})
target_include_directories(q4_thirdparty_oggvorbis PRIVATE
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/ogg
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/vorbis
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/vorbissrc
)
set_target_properties(q4_thirdparty_oggvorbis PROPERTIES FOLDER "ThirdParty")
set(Q4_SYS_TARGETS)
foreach(source IN LISTS Q4_SYS_SOURCES)
    get_filename_component(stem ${source} NAME_WE)
    set(target q4_engine_sys_${stem})
    q4_add_engine_object(${target} ${source})
    target_compile_definitions(${target} PRIVATE Q4_RECON_ENGINE_PRIVATE Q4_RECON_SDK_MSGQUEUE)
    list(APPEND Q4_SYS_TARGETS ${target})
endforeach()
add_custom_target(q4_engine_sys DEPENDS ${Q4_SYS_TARGETS})
set_target_properties(q4_engine_sys PROPERTIES FOLDER "Engine/Seed")

add_custom_target(q4_engine_seed
    DEPENDS
        q4_engine_aas
        q4_engine_aas_file
        q4_engine_cm_model
        q4_engine_cm_load
        q4_engine_cm_contacts
        q4_engine_cm_contents
        q4_engine_cm_trace
        q4_engine_cm_translate
        q4_engine_cm_seed
        q4_engine_framework_core
        q4_engine_framework_console
        q4_engine_framework_async
        q4_engine_framework_msgchannel
        q4_engine_framework_session
        q4_engine_ui
        q4_engine_renderer
        q4_engine_bse
        q4_thirdparty_jpeg
        q4_engine_sound
        q4_thirdparty_oggvorbis
        q4_engine_sys
)
set_target_properties(q4_engine_seed PROPERTIES FOLDER "Engine")

add_custom_target(q4_reconstruction_foundation
    DEPENDS
        q4_idlib
        q4_engine_aas
        q4_engine_aas_file
        q4_engine_cm_model
        q4_engine_cm_load
        q4_engine_cm_contacts
        q4_engine_cm_contents
        q4_engine_cm_trace
        q4_engine_cm_translate
        q4_engine_cm_seed
        q4_engine_framework_console
        q4_engine_framework_core_cmdsystem
        q4_engine_framework_core_compressor
        q4_engine_framework_core_cvarsystem
        q4_engine_framework_core_declaf
        q4_engine_framework_core_declentitydef
        q4_engine_framework_core_declmanager
        q4_engine_framework_core_declpda
        q4_engine_framework_core_declskin
        q4_engine_framework_core_decltable
        q4_engine_framework_core_demofile
        q4_engine_framework_core_eventloop
        q4_engine_framework_core_file
        q4_engine_framework_core_filesystem
        q4_engine_framework_core_keyinput
        q4_engine_framework_core_unzip
        q4_engine_framework_async_asyncnetwork
        q4_engine_framework_async_networksystem
        q4_engine_framework_msgchannel
		q4_engine_ui
        q4_thirdparty_jpeg
        q4_thirdparty_oggvorbis
)
set_target_properties(q4_reconstruction_foundation PROPERTIES FOLDER "Reconstruction")

# Full reconstructed Win32 engine integration target.  The per-compiland
# object targets above remain the source-ownership/ABI audit surface; this
# target compiles the same recovered sources into a runnable executable.
# Editor/dmap tool exports and CURL are intentionally disabled until their
# engine-facing interfaces have been reconstructed from the retail PDB.
set(Q4_OPENAL_LOADER_SOURCES
    ${PROJECT_SOURCE_DIR}/openal/idal.cpp
)

add_executable(q4xp WIN32
    ${Q4_AAS_SOURCES}
    ${Q4_CM_MODEL_SOURCE}
    ${Q4_CM_SOURCES}
    ${Q4_FRAMEWORK_ENGINE_TOP_SOURCES}
    ${Q4_FRAMEWORK_ASYNC_SOURCES}
    ${Q4_FRAMEWORK_MSGCHANNEL_SOURCE}
    ${Q4_UI_SOURCES}
    ${Q4_RENDERER_SOURCES}
    ${Q4_BSE_SOURCES}
    ${Q4_JPEG_SOURCES}
    ${Q4_SOUND_SOURCES}
    ${Q4_OGGVORBIS_SOURCES}
    ${Q4_OPENAL_LOADER_SOURCES}
    ${Q4_SYS_SOURCES}
)

target_include_directories(q4xp PRIVATE
    ${PROJECT_SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/renderer/jpeg-6
    ${PROJECT_SOURCE_DIR}/sound
    ${PROJECT_SOURCE_DIR}/sys/win32
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/ogg
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/ogg/include
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/vorbis
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/vorbis/include
    ${PROJECT_SOURCE_DIR}/sound/OggVorbis/vorbissrc
    "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Include"
)

target_compile_definitions(q4xp PRIVATE
    WIN32
    _WINDOWS
    _LOAD_DLL
    __DOOM_DLL__
    _USE_32BIT_TIME_T
    Q4_NO_PUNKBUSTER
    Q4_RECON_SEED
    Q4_RECON_ENGINE_PRIVATE
    Q4_RECON_SDK_MSGQUEUE
    Q4_DISABLE_TASKKEY_HOOK
    Q4_DISABLE_TOOLS
    Q4_DISABLE_GL_LOGGING
    Q4_RECONSTRUCTED_SOUND
    ID_ENABLE_CURL=0
    $<$<CONFIG:Debug>:_DEBUG>
    $<$<CONFIG:Release>:NDEBUG;_FINAL>
)

target_link_directories(q4xp PRIVATE
    "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Lib/x86"
    ${PROJECT_SOURCE_DIR}/openal/lib
)

target_link_libraries(q4xp PRIVATE
    q4_idlib
    opengl32
    winmm
    ws2_32
    iphlpapi
    dbghelp
    comctl32
    dinput8
    dsound
    dxguid
    version
)

if(MSVC)
    # Keep an address map and symbols beside the reconstructed executable so
    # retail-startup crashes can be resolved without enabling the tools DLL.
    target_compile_options(q4xp PRIVATE /Zi)
    target_link_options(q4xp PRIVATE
        /DEBUG:FULL
        /PDB:E:/projects/Quake4Alpha/q4xp.pdb
        /MAP:E:/projects/Quake4Alpha/q4xp.map
        /STACK:16777216,4096
    )
endif()

set_target_properties(q4xp PROPERTIES
    OUTPUT_NAME q4xp
    RUNTIME_OUTPUT_DIRECTORY "E:/projects/Quake4Alpha"
    RUNTIME_OUTPUT_DIRECTORY_DEBUG "E:/projects/Quake4Alpha"
    RUNTIME_OUTPUT_DIRECTORY_RELEASE "E:/projects/Quake4Alpha"
    PDB_OUTPUT_DIRECTORY "E:/projects/Quake4Alpha"
    FOLDER "Engine"
)
