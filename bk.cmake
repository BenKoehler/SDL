set(BK_SDL_VERSION "7ec9a4385a0829ef2f7b101ec93f68065ddd2571") # SDL2 branch

function(link_sdl2 target MOD)
    target_link_libraries(${target} ${MOD} ${PROJECT_SOURCE_DIR}/thirdparty/SDL2/lib/libSDL2-2.0.so.0.2700.0)
    target_include_directories(${target} SYSTEM ${MOD} ${PROJECT_SOURCE_DIR}/thirdparty/SDL2/include)
endfunction()
