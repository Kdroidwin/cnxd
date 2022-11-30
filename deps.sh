#!/usr/bin/env bash

ANDROID_MINSDK_VERSION="9"
pushd "$(cd $(dirname $0);pwd)/third_party"
  #./library_build.sh armeabi-v7a android-${ANDROID_MINSDK_VERSION} Debug
  #./library_build.sh arm64-v8a android-${ANDROID_MINSDK_VERSION} Debug
  #./library_build.sh x86 android-${ANDROID_MINSDK_VERSION} Debug
  #./library_build.sh x86_64 android-${ANDROID_MINSDK_VERSION} Debug
  ./library_build.sh armeabi-v7a android-21 Release
  ./library_build.sh arm64-v8a android-21 Release
  ./library_build.sh x86 android-19 Release
  #./library_build.sh x86_64 android-${ANDROID_MINSDK_VERSION} Release
popd
