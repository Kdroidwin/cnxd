FetchContent_Declare(
  libpng
  GIT_REPOSITORY https://github.com/glennrp/libpng
  GIT_TAG        v1.6.38
)

option(PNG_SHARED "" OFF)
option(PNG_STATIC "" ON)
option(PNG_EXECUTABLES "" OFF)
option(PNG_TESTS "" OFF)

FetchContent_MakeAvailable(libpng)
add_library(libpng INTERFACE)
target_include_directories(libpng INTERFACE ${libpng_BINARY_DIR} ${libpng_SOURCE_DIR})
