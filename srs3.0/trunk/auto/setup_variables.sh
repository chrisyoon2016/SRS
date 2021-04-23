#!/bin/bash

# when options parsed, setup some variables, then build the depends.

# when arm specified, setup the cross build variables.
if [ $SRS_ARM_UBUNTU12 = YES ]; then
    __SrsArmCC="arm-linux-gnueabi-gcc";
    __SrsArmGCC="arm-linux-gnueabi-gcc";
    __SrsArmCXX="arm-linux-gnueabi-g++";
    __SrsArmAR="arm-linux-gnueabi-ar";
    __SrsArmLD="arm-linux-gnueabi-ld";
    __SrsArmRANDLIB="arm-linux-gnueabi-ranlib";
fi

if [ $SRS_MIPS_UBUNTU12 = YES ]; then
    __SrsArmCC="mips-linux-uclibc-gnu-gcc";
    __SrsArmGCC="mips-linux-uclibc-gnu-gcc";
    __SrsArmCXX="mips-linux-uclibc-gnu-g++";
    __SrsArmAR="mips-linux-uclibc-gnu-ar";
    __SrsArmLD="mips-linux-uclibc-gnu-ld";
    __SrsArmRANDLIB="mips-linux-uclibc-gnu-ranlib";
fi

# the arm-ubuntu12 options for make for depends
if [[ -z $SrsArmCC ]]; then SrsArmCC=$__SrsArmCC; fi
if [[ -z $SrsArmGCC ]]; then SrsArmGCC=$__SrsArmGCC; fi
if [[ -z $SrsArmCXX ]]; then SrsArmCXX=$__SrsArmCXX; fi
if [[ -z $SrsArmAR ]]; then SrsArmAR=$__SrsArmAR; fi
if [[ -z $SrsArmLD ]]; then SrsArmLD=$__SrsArmLD; fi
if [[ -z $SrsArmRANDLIB ]]; then SrsArmRANDLIB=$__SrsArmRANDLIB; fi
