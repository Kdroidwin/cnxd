cmake_minimum_required(VERSION 3.22.1)
project(comitton C CXX ASM)
include(FetchContent)

set(CMAKE_BUILD_TYPE Release)

option(WITH_PNG "Include PNG decoder" ON)
option(WITH_JPEG "Include JPEG decoder" ON)
option(WITH_WEBP "Include WebP decoder" ON)

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

include(unrar.cmake)
target_sources(comitton PRIVATE comitton/callUnrar.cpp)

if(WITH_JPEG)
  include(libjpeg-turbo.cmake)
  add_definitions(-DHAVE_LIBJPEG)
  target_sources(comitton PRIVATE comitton/ImageJPEG.cpp)
endif()
if(WITH_PNG)
  include(libpng.cmake)
  add_definitions(-DHAVE_LIBPNG)
  target_sources(comitton PRIVATE comitton/ImagePNG.cpp)
endif()
if(WITH_GIF)
# TODO: add Gif support
endif()
if(WITH_WEBP)
  include(libwebp.cmake)
  add_definitions(-DHAVE_LIBWEBP)
  target_sources(comitton PRIVATE comitton/ImageWebP.cpp)
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

target_link_libraries(comitton android jnigraphics log z)

