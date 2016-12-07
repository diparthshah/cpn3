#!/bin/sh

# Inits
PATH=${PATH}:${PWD}/toolchain/bin/
BUILD_START=$(date +"%s")

# Exports
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER="Kish-Patel"
export KBUILD_BUILD_HOST="J.A.R.V.I.S"
export CROSS_COMPILE=/mnt/kernel_stuff/aarch64-linux-android-4.9/bin/aarch64-linux-android-

# Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White
nocol='\033[0m'         # Default

# Compiling Process
echo -e "$Cyan***********************************************"
make clean && make mrproper
make CP8676_I02_defconfig
make -j2
echo -e "=====================================================================$nocol"

echo -e "$Blue=====================================================================$nocol"
echo -e "$Green=====================================================================$nocol"
echo -e "$Purple====================================================================="
echo "====================================================================="
echo "               **    ** ****** ******** ********                     "
echo "               **    ** ****** ******** ********                     "
echo "               **    ** **     **    **    **                        "
echo "               ******** ****** ********    **                        "
echo "               ******** ****** ********    **                        "
echo "               **    ** **     **    **    **                        "
echo "               **    ** ****** **    **    **                        "
echo "               **    ** ****** **    **    **                        "
echo "====================================================================="
echo "====================================================================="
echo "                            ***                  ***                 "
echo "                             ***                ***                  "
echo "        **        ** ******** ***              *** ******            "
echo "        **        ** ********  ***            ***  ******            "
echo "        **        ** **    **   ***          ***   **                "
echo "        **   ***  ** ********    ***        ***    ******            "
echo "        **  ** ** ** ********     ***      ***     ******            "
echo "        ** **   **** **    **      ***    ***      **                "
echo "        ****     *** **    **       ***  ***       ******            "
echo "        ***       ** **    **        ******        ******            "
echo "                                      ****                           "
echo "====================================================================="
echo -e "=====================================================================$nocol"
echo -e "$Blue=====================================================================$nocol"
echo -e "$Green=====================================================================$nocol"

BUILD_END=$(date +"%s")
DIFF=$(($BUILD_END - $BUILD_START))
echo -e "$Yellow Build completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds.$nocol"
