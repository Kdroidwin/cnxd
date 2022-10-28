cmake_minimum_required(VERSION 3.22.1)
project(comitton C CXX ASM)
include(FetchContent)

set(CMAKE_BUILD_TYPE Release)

option(WITH_PNG "Include PNG decoder" ON)
if(!WIN32)
  option(WITH_JPEG "Include JPEG decoder" ON)
  option(WITH_WEBP "Include WebP decoder" ON)
else()
  message(STATUS "THIS OS IS NOT UNIX")
endif()

set(COMITTON_SOURCES
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

set(UNRAR_SOURCES
        unrar5/crc.cpp
        unrar5/crypt.cpp
        unrar5/getbits.cpp
        unrar5/rarvm.cpp
        unrar5/rdwrfn.cpp
        unrar5/rijndael.cpp
        unrar5/sha1.cpp
        unrar5/unpack.cpp
        unrar5/hash.cpp
        unrar5/secpassword.cpp
        unrar5/blake2s.cpp
        unrar5/sha256.cpp
        unrar5/unicode.cpp
        unrar5/strfn.cpp
        unrar5/timefn.cpp
        comitton/callUnrar.cpp
        )

add_library(comitton SHARED
        ${COMITTON_SOURCES}
        ${UNRAR_SOURCES}
        )

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
