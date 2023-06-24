cmake_minimum_required(VERSION 3.22.1)
project(comitton C CXX ASM)
include(FetchContent)
include(GNUInstallDirs)

set(CMAKE_BUILD_TYPE Release)

option(WITH_JPEG "Include JPEG decoder" ON)
option(WITH_PNG "Include PNG decoder" ON)
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

add_subdirectory(unrar)
target_sources(comitton PRIVATE comitton/callUnrar.cpp)

if(WITH_JPEG)
  add_definitions(-DHAVE_LIBJPEG)
  add_subdirectory(libjpeg-turbo)
  target_sources(comitton PRIVATE comitton/ImageJPEG.cpp)
endif()
if(WITH_PNG)
  add_definitions(-DHAVE_LIBPNG)
  add_subdirectory(libpng)
  target_sources(comitton PRIVATE comitton/ImagePNG.cpp)
endif()
if(WITH_GIF)
# TODO: add Gif support
endif()
if(WITH_WEBP)
  add_definitions(-DHAVE_LIBWEBP)
  add_subdirectory(libwebp)
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

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(comitton android jnigraphics log)
