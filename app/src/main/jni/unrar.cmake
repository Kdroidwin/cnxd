set(UNRAR_VERSION "6.2.1")
set(UNRAR_HASH_SHA256 "5cc8f7ded262d27c29d01e7a119d2fd23edda427711820454f2eb667044a8900")

set(FILE_NAME "unrarsrc-${UNRAR_VERSION}.tar.gz")
set(URL "https://www.rarlab.com/rar/${FILE_NAME}")
set(DEPS_PATH "${CMAKE_CURRENT_BINARY_DIR}/_deps")
set(FILE_PATH "${DEPS_PATH}/${FILE_NAME}")
set(SRC_DIR "${DEPS_PATH}/unrar-src")

file(MAKE_DIRECTORY "${DEPS_PATH}")
file(
  DOWNLOAD
  "${URL}"
  "${FILE_PATH}"
  EXPECTED_HASH SHA256=${UNRAR_HASH_SHA256}
)

file(MAKE_DIRECTORY "${SRC_DIR}")
execute_process(
  COMMAND ${CMAKE_COMMAND} -E tar xvf "${FILE_PATH}"
  WORKING_DIRECTORY "${SRC_DIR}"
)

add_definitions(
  -D_FILE_OFFSET_BITS=64
  -D_LARGEFILE_SOURCE
#  -DRAR_SMP
#  -DUNRAR
#  -DSILENT
)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-dangling-else -Wno-logical-op-parentheses -Wno-switch")
set(PATCH_PATH "${CMAKE_CURRENT_SOURCE_DIR}/unrar.patch")

#message(STATUS "PATCH_PATH: ${PATCH_PATH}")
#set(PATCH_COMMAND "git apply \"${PATCH_PATH}\"")
#file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/unrar.patch DESTINATION ${SRC_DIR}/unrar)

execute_process(
  COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/patch-unrar.sh "${PATCH_PATH}"
  WORKING_DIRECTORY "${SRC_DIR}/unrar"
)

include_directories(${SRC_DIR})

set(
  UNRAR_SOURCES
  ${SRC_DIR}/unrar/blake2s.cpp
  ${SRC_DIR}/unrar/crc.cpp
  ${SRC_DIR}/unrar/crypt.cpp
  ${SRC_DIR}/unrar/getbits.cpp
  ${SRC_DIR}/unrar/hash.cpp
  ${SRC_DIR}/unrar/rarvm.cpp
  ${SRC_DIR}/unrar/rdwrfn.cpp
  ${SRC_DIR}/unrar/rijndael.cpp
  ${SRC_DIR}/unrar/secpassword.cpp
  ${SRC_DIR}/unrar/sha1.cpp
  ${SRC_DIR}/unrar/sha256.cpp
  ${SRC_DIR}/unrar/strfn.cpp
  ${SRC_DIR}/unrar/timefn.cpp
  ${SRC_DIR}/unrar/unicode.cpp
  ${SRC_DIR}/unrar/unpack.cpp
)

add_library(unrar_static STATIC ${UNRAR_SOURCES})
target_link_libraries(comitton unrar_static)

