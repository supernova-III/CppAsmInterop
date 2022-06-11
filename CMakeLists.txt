cmake_minimum_required(VERSION 3.17)

project(ASML LANGUAGES CXX C ASM)

enable_language(ASM_NASM)

add_compile_options("$<$<COMPILE_LANGUAGE:ASM_NASM>: -f$<TARGET_PROPERTY:NASM_OBJ_FORMAT>>")

add_executable(ASML main.cpp hello.asm)
if(WIN64)
    set_target_properties(ASML PROPERTIES NASM_OBJ_FORMAT win64)
else()
    set_target_properties(ASML PROPERTIES NASM_OBJ_FORMAT elf64)
endif()

set_target_properties(
    ASML PROPERTIES 
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin
)
