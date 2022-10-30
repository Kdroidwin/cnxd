FetchContent_Declare(libwebp
        GIT_REPOSITORY https://github.com/webmproject/libwebp
        GIT_TAG        v1.2.4
        )

option(WEBP_BUILD_ANIM_UTILS "" OFF)
option(WEBP_BUILD_CWEBP "" OFF)
option(WEBP_BUILD_DWEBP "" OFF)
option(WEBP_BUILD_GIF2WEBP "" OFF)
option(WEBP_BUILD_IMG2WEBP "" OFF)
option(WEBP_BUILD_VWEBP "" OFF)
option(WEBP_BUILD_WEBPINFO "" OFF)
option(WEBP_BUILD_WEBPMUX "" OFF)
option(WEBP_BUILD_EXTRAS "" OFF)
option(WEBP_BUILD_WEBP_JS "" OFF)
option(WEBP_ENABLE_SWAP_16BIT_CSP "" ON)

FetchContent_MakeAvailable(libwebp)

target_include_directories(comitton PRIVATE ${libwebp_BINARY_DIR} ${libwebp_SOURCE_DIR})
target_link_libraries(comitton webpdecoder webpdemux)