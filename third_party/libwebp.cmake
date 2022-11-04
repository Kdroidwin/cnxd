FetchContent_Declare(
  libwebp
  GIT_REPOSITORY https://github.com/webmproject/libwebp
  GIT_TAG        v1.2.4
)

option(BUILD_SHARED_LIBS "" OFF)
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
add_library(libwebp INTERFACE)
target_include_directories(libwebp INTERFACE ${libwebp_BINARY_DIR} ${libwebp_SOURCE_DIR})

execute_process(
  COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/copy_headers.sh "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}include"
  WORKING_DIRECTORY "${libwebp_SOURCE_DIR}/src"
)
execute_process(
  COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/copy_headers.sh "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}include"
  WORKING_DIRECTORY "${libwebp_BINARY_DIR}/src"
)
