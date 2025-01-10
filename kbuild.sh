#!/bin/bash
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=$(pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

make O=../out sdm845-perf_defconfig sharp/pucci.config
make O=../out -j64