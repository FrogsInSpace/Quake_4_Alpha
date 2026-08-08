add_custom_target(reconstruction_manifests SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/Export-EvidenceManifest.ps1
    ${CMAKE_CURRENT_SOURCE_DIR}/Export-ReconstructionLedger.ps1
    ${CMAKE_CURRENT_SOURCE_DIR}/Seed-DoomImplementations.ps1
    ${CMAKE_CURRENT_SOURCE_DIR}/Seed-DoomHeaders.ps1
)

set_target_properties(reconstruction_manifests PROPERTIES FOLDER "Reconstruction")

if(MSVC)
    set(DIA_SDK_ROOT "${CMAKE_GENERATOR_INSTANCE}/DIA SDK")
    if(EXISTS "${DIA_SDK_ROOT}/include/dia2.h")
        add_executable(q4_pdb_inventory pdb_inventory.cpp)
        target_include_directories(q4_pdb_inventory PRIVATE "${DIA_SDK_ROOT}/include")
        target_link_directories(q4_pdb_inventory PRIVATE "${DIA_SDK_ROOT}/lib")
        target_link_libraries(q4_pdb_inventory PRIVATE diaguids ole32 oleaut32)
        target_compile_definitions(q4_pdb_inventory PRIVATE UNICODE _UNICODE)
        set_target_properties(q4_pdb_inventory PROPERTIES FOLDER "Reconstruction")
    else()
        message(WARNING "DIA SDK not found; q4_pdb_inventory will not be built")
    endif()
endif()
