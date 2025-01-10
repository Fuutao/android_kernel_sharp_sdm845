#!/bin/bash

export ARCH=arm64
export SUBARCH=arm64

CLANG_PATH=$(pwd)/prebuilts/clang/host/linux-x86/clang-r416183b/bin/clang
CROSS_COMPILE_PATH=$(pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
CROSS_COMPILE_ARM32_PATH=$(pwd)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-


make ARCH=arm64 \
    CC=$CLANG_PATH \
    CLANG_TRIPLE=aarch64-linux-gnu- \
    CROSS_COMPILE=$CROSS_COMPILE_PATH \
    Judau_defconfig


make -j20 ARCH=arm64 \
    CC=$CLANG_PATH \
    CLANG_TRIPLE=aarch64-linux-gnu- \
    CROSS_COMPILE=$CROSS_COMPILE_PATH \
    CROSS_COMPILE_ARM32=$CROSS_COMPILE_ARM32_PATH \
    CFLAGS="-I$(pwd)/drivers/pinctrl -Wno-format -Wno-error"

