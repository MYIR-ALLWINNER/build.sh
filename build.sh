#!/bin/bash
# Description:
# Allwinner compile tools usage
# We follow below step:
#
# To sun8i & linux-3.x developer:
#------------------------------------------------------------------------------------------------
# Using origin buildroot compile once, then not compile with reusable.
#	Arch			Kernel				Out Dir
#	sun8i			Linux-3.x			out/${chip}
#------------------------------------------------------------------------------------------------
#
# To mostly developer(sun50i|linux-4.x): using tools/build/mkcommon.sh
#------------------------------------------------------------------------------------------------
#	Kernel			Linux-3.x			Linux-4.x
#	Toolchain		origin				linaro-5.3
#	Toolchain Dir		external-toolchain		gcc-linaro-5.3.1-2016.05
#	Def Rootfs		target_${ARCH}.tar.xz		target-${ARCH}-linaro-5.3.tar.xz
#	Out Dir			out/${chip}			out/${chip}-linaro-5.3
#
# To self design rootfs developer: using ${buildroot}/build/mkcommon.sh
#------------------------------------------------------------------------------------------------
#	Kernel			Linux-3.x			Linux-4.x
#	buildroot		origin				buildroot-201611
#	Out Dir			out/${chip}			out/${chip}-linaro-5.3
#
# As self design rootfs developer, if not manager buildroot, please reference to buildroot manual
#

PWD=$(pwd)
SUF="0*"




#=======================================================cat files=============================================================
brand_tools_toolchain_path="$PWD/brandy/brandy-2.0/tools/toolchain/"
brand_tools_toolchain_file1="riscv64-linux-x86_64-20200528.tar.xz"
brand_tools_toolchain_file2="gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi.tar.xz"
brand_tools_toolchain_file3="riscv64-glibc-gcc-thead_20200702.tar.xz"
if [ ! -f "$brand_tools_toolchain_path/$brand_tools_toolchain_file1" ]; then
    echo "init $PWD/brandy/brandy-2.0/tools/toolchain/ ......"
    cat $brand_tools_toolchain_path$brand_tools_toolchain_file1$SUF > $brand_tools_toolchain_path$brand_tools_toolchain_file1
fi

if [ ! -f "$brand_tools_toolchain_path/$brand_tools_toolchain_file2" ]; then
    cat $brand_tools_toolchain_path$brand_tools_toolchain_file2$SUF > $brand_tools_toolchain_path$brand_tools_toolchain_file2
fi

if [ ! -f "$brand_tools_toolchain_path/$brand_tools_toolchain_file3" ]; then
    cat $brand_tools_toolchain_path$brand_tools_toolchain_file3$SUF > $brand_tools_toolchain_path$brand_tools_toolchain_file3
fi

#=======================================================del files=============================================================

if [  -f "$brand_tools_toolchain_path/$brand_tools_toolchain_file1" ]; then
    rm -rf $brand_tools_toolchain_path/riscv64-linux-x86_64-20200528.tar.xz0*
fi

if [  -f "$brand_tools_toolchain_path/$brand_tools_toolchain_file2" ]; then
    rm -rf $brand_tools_toolchain_path/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi.tar.xz0*
fi

if [  -f "$brand_tools_toolchain_path/$brand_tools_toolchain_file3" ]; then
    rm -rf $brand_tools_toolchain_path/riscv64-glibc-gcc-thead_20200702.tar.xz0*
fi


#=======================================================cat files=============================================================
build_toolchain_path="$PWD/build/toolchain/"
build_toolchain_file1="gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu.tar.xz"
build_toolchain_file2="gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabi.tar.xz"
build_toolchain_file3="gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf.tar.xz"
build_toolchain_file4="gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu.tar.xz"
build_toolchain_file5="gcc-linaro-aarch64.tar.xz"
build_toolchain_file6="linux-arm-4.9.tar"
if [ ! -f "$build_toolchain_path/$build_toolchain_file1" ]; then
    echo "init $PWD/build/toolchain ......"
    cat $build_toolchain_path$build_toolchain_file1$SUF > $build_toolchain_path$build_toolchain_file1
fi

if [ ! -f "$build_toolchain_path/$build_toolchain_file2" ]; then
    cat $build_toolchain_path$build_toolchain_file2$SUF > $build_toolchain_path$build_toolchain_file2
fi

if [ ! -f "$build_toolchain_path/$build_toolchain_file3" ]; then
    cat $build_toolchain_path$build_toolchain_file3$SUF > $build_toolchain_path$build_toolchain_file3
fi

if [ ! -f "$build_toolchain_path/$build_toolchain_file4" ]; then
    cat $build_toolchain_path$build_toolchain_file4$SUF > $build_toolchain_path$build_toolchain_file4
fi

if [ ! -f "$build_toolchain_path/$build_toolchain_file5" ]; then
    cat $build_toolchain_path$build_toolchain_file5$SUF > $build_toolchain_path$build_toolchain_file5
fi

if [ ! -f "$build_toolchain_path/$build_toolchain_file6" ]; then
    cat $build_toolchain_path$build_toolchain_file6$SUF > $build_toolchain_path$build_toolchain_file6
fi

#=======================================================del files=============================================================
if [  -f "$build_toolchain_path/$build_toolchain_file1" ]; then
    rm -rf $build_toolchain_path/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu.tar.xz0*
fi

if [  -f "$build_toolchain_path/$build_toolchain_file2" ]; then
    rm -rf $build_toolchain_path/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabi.tar.xz0*
fi

if [  -f "$build_toolchain_path/$build_toolchain_file3" ]; then
    rm -rf $build_toolchain_path/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf.tar.xz0*
fi

if [  -f "$build_toolchain_path/$build_toolchain_file4" ]; then
    rm -rf $build_toolchain_path/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu.tar.xz0*
fi

if [  -f "$build_toolchain_path/$build_toolchain_file5" ]; then
    rm -rf $build_toolchain_path/gcc-linaro-aarch64.tar.xz0*
fi

if [  -f "$build_toolchain_path/$build_toolchain_file6" ]; then
    rm -rf $build_toolchain_path/linux-arm-4.9.tar0*
fi



#=======================================================cat files=============================================================
test_dragonboard_common_rootfs_path="$PWD/test/dragonboard/common/rootfs/"
test_dragonboard_common_rootfs_file="sysroot.tar.gz"
if [ ! -f "$test_dragonboard_common_rootfs_path/$test_dragonboard_common_rootfs_file" ]; then
    echo "init $PWD/test/dragonboard/common/rootfs/ ......"
    cat $test_dragonboard_common_rootfs_path$test_dragonboard_common_rootfs_file$SUF > $test_dragonboard_common_rootfs_path$test_dragonboard_common_rootfs_file
fi

#=======================================================del files=============================================================
if [ -f "$test_dragonboard_common_rootfs_path/$test_dragonboard_common_rootfs_file" ]; then
    rm -rf $test_dragonboard_common_rootfs_path/sysroot.tar.gz0*
fi


build/mkcommon.sh $@
