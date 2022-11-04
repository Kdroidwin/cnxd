cmake_minimum_required(VERSION 3.22.1)
project(comitton C CXX ASM)
include(FetchContent)

set(CMAKE_BUILD_TYPE Release)

option(WITH_PNG "Include PNG decoder" ON)
option(WITH_JPEG "Include JPEG decoder" ON)
option(WITH_WEBP "Include WebP decoder" ON)

set(LIB_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../../../../third_party)
set(LIB_DIR ${LIB_ROOT}/prebuilt/release/${CMAKE_ANDROID_ARCH_ABI})

set(
  COMITTON_SOURCES
  comitton/ImageBlur.cpp
  comitton/ImageScaleHalf.cpp
  comitton/ImageCommon.cpp
  comitton/ImageThumbnail.cpp
  comitton/ImageScaleLinear.cpp
  comitton/ImageScaleCubic.cpp
  comitton/ImageScaleNear.cpp
  comitton/ImageScale.cpp
  comitton/ImageBright.cpp
  comitton/ImageRotate.cpp
  comitton/ImageMarginCut.cpp
  comitton/ImageSharpen.cpp
  comitton/ImageInvert.cpp
  comitton/ImageGray.cpp
  comitton/ImageHalf.cpp
  comitton/callImage.cpp
  comitton/TextCommon.cpp
  comitton/callText.cpp
)

add_library(
  comitton SHARED
  ${COMITTON_SOURCES}
)

add_library(unrar-static STATIC IMPORTED)
set_target_properties(
  unrar-static
  PROPERTIES
  IMPORTED_LOCATION ${LIB_DIR}/libunrar.a
)
target_link_libraries(comitton unrar-static)
target_sources(comitton PRIVATE comitton/callUnrar.cpp)

if(WITH_JPEG)
  add_definitions(-DHAVE_LIBJPEG)
  target_sources(comitton PRIVATE comitton/ImageJPEG.cpp)
  add_library(jpeg-static STATIC IMPORTED)
  set_target_properties(
    jpeg-static
    PROPERTIES
    IMPORTED_LOCATION ${LIB_DIR}/libjpeg.a
  )
  target_link_libraries(comitton jpeg-static)
endif()
if(WITH_PNG)
  add_definitions(-DHAVE_LIBPNG)
  target_sources(comitton PRIVATE comitton/ImagePNG.cpp)
  add_library(png-static STATIC IMPORTED)
  set_target_properties(
    png-static
    PROPERTIES
    IMPORTED_LOCATION ${LIB_DIR}/libpng16.a
  )
  target_link_libraries(comitton png-static)
endif()
if(WITH_GIF)
# TODO: add Gif support
endif()
if(WITH_WEBP)
  add_definitions(-DHAVE_LIBWEBP)
  target_sources(comitton PRIVATE comitton/ImageWebP.cpp)
  add_library(webpdecoder-static STATIC IMPORTED)
  set_target_properties(
    webpdecoder-static
    PROPERTIES
    IMPORTED_LOCATION ${LIB_DIR}/libwebpdecoder.a
  )
  add_library(webpdemux-static STATIC IMPORTED)
  set_target_properties(
    webpdemux-static
    PROPERTIES
    IMPORTED_LOCATION ${LIB_DIR}/libwebpdemux.a
  )
  target_link_libraries(comitton webpdecoder-static webpdemux-static)
endif()
if(WITH_AVIF)
# TODO: add AVIF support
endif()
if(WITH_HEIF)
# TODO: add HEIF support
endif()
if(WITH_JXL)
# TODO: add JXL support
endif()

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${LIB_DIR}/include)
target_link_libraries(comitton android jnigraphics log z)
