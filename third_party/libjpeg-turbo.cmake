FetchContent_Declare(
  libjpeg-turbo
  GIT_REPOSITORY https://github.com/libjpeg-turbo/libjpeg-turbo
  GIT_TAG        2.1.4
)

option(ENABLE_SHARED "" OFF)
option(ENABLE_STATIC "" ON)
option(REQUIRE_SIMD "" ON)
option(WITH_ARITH_ENC "" OFF)
option(WITH_JPEG8 "" ON)
option(WITH_TURBOJPEG "" OFF)

FetchContent_MakeAvailable(libjpeg-turbo)
add_library(libjpeg-turbo INTERFACE)
target_include_directories(libjpeg-turbo INTERFACE ${libjpeg-turbo_BINARY_DIR} ${libjpeg-turbo_SOURCE_DIR})
