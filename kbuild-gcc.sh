#!/bin/bash

export ARCH=arm64
export SUBARCH=arm64

#CLANG_PATH=$(pwd)/prebuilts/clang/host/linux-x86/clang-r416183b/bin/clang
CROSS_COMPILE_PATH=$(pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-


make ARCH=arm64 \
    CROSS_COMPILE=$CROSS_COMPILE_PATH \
    pucci_config


make -j20 ARCH=arm64 \
    CROSS_COMPILE=$CROSS_COMPILE_PATH \


