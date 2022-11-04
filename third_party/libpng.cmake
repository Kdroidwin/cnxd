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

execute_process(
  COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/copy_headers.sh "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}include"
  WORKING_DIRECTORY "${libpng_SOURCE_DIR}"
)
execute_process(
  COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/copy_headers.sh "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}include"
  WORKING_DIRECTORY "${libpng_BINARY_DIR}"
)
