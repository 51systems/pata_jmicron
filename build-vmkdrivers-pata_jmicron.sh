#!/bin/sh


#DEBUG="-gdwarf-2 -g3"

# Use gcc version 4.1.2
CC=gcc
# Use ld from binutils-2.17.50.0.15-1
LD=ld
# Use GNU grep 2.5.1
GREP=grep
# Use GNU sed 4.5.1
SED=sed
# Use GNU xargs 4.2.27
XARGS=xargs
# Use mkdir from GNU coreutils 5.97
MKDIR=mkdir

# Create output directories
$GREP -v -e "SED" build-vmkdrivers.sh |
$GREP -o -e "-o [^ ]*\." |
$SED -e 's?-o \(.*\)/[^/]*\.?\1?' |
$GREP -v -e "\*" |
$XARGS $MKDIR -p

# Compiler flags assume being compiled natively on a x86-64 machine

$CC -m64 -s -fno-strict-aliasing -fno-working-directory ${DEBUG} -Wall -Werror -Wstrict-prototypes -fPIE -falign-functions=4 -falign-jumps=4 -falign-loops=4 -ffreestanding -fno-common -fno-omit-frame-pointer -fno-strength-reduce -march=x86-64 -mcmodel=small -minline-all-stringops -mno-red-zone -nostartfiles -nostdlib -Wno-error -Wno-unused-value -Wno-pointer-sign -Wno-strict-prototypes -DCONFIG_COMPAT -DCONFIG_PROC_FS -DCPU=x86-64 -DDEBUG_STUB -DESX3_NETWORKING_NOT_DONE_YET -DGPLED_CODE -DKBUILD_MODNAME=\"pata_jmicron\" -DLINUX_MODULE_AUX_HEAP_NAME=pata_jmicron -DLINUX_MODULE_HEAP_INITIAL=1024*100 -DLINUX_MODULE_HEAP_MAX=4*1024*4096 -DLINUX_MODULE_HEAP_NAME=pata_jmicron -DLINUX_MODULE_SKB_HEAP -DLINUX_MODULE_SKB_HEAP_INITIAL=512*1024 -DLINUX_MODULE_SKB_HEAP_MAX=22*1024*1024 -DLINUX_MODULE_VERSION=\"0.1.4\" -DMODULE -DNET_DRIVER -DSCONS_NO_GVMOMI -DSMP_CAPABLE_VMK_DRIVER -DVMKERNEL_MODULE -DVMK_DEVKIT_HAS_API_VMKAPI_BASE -DVMK_DEVKIT_HAS_API_VMKAPI_DEVICE -DVMK_DEVKIT_HAS_API_VMKAPI_NET -DVMK_DEVKIT_HAS_API_VMKAPI_NPIV -DVMK_DEVKIT_HAS_API_VMKAPI_SCSI -DVMNIX -DVMX86_RELEASE -DVMX86_SERVER -DVMX86_VPROBES -D_LINUX -D__COMPAT_LAYER_2_6_18_PLUS__ -D__KERNEL__ -D__USE_COMPAT_LAYER_2_6_18_PLUS__ -DCONFIG_pata_jmicron_NAPI -D__VMKERNEL_MODULE__ -D__VMKERNEL__ -D__VMKLNX__ -D__VMK_GCC_BUG_ALIGNMENT_PADDING__ -D__VMWARE__ -Ivmkdrivers/src26/drivers/ata -Ibora/build/scons/build/version -Ibora/vmkernel/include/vmkapi -Ivmkdrivers/src26/include -Ivmkdrivers/src26/include/vmklinux26 -Ibora/build/scons/build/HEADERS/vmkdrivers-asm-x64/vmkernel64/release -Ibora/build/scons/build/HEADERS/vmkdrivers-asm-x64/vmkernel64/release/mac-default -Ibora/build/scons/build/HEADERS/vmkdrivers-vmkernel/vmkernel64/release -Ivmkdrivers/src26/drivers/ata -include bora/vmkernel/distribute/push-hidden.h -include vmkdrivers/src26/include/linux/autoconf.h -c -o bora/build/scons/build/vmkdriver-pata_jmicron.o/release/vmkernel64/SUBDIRS/vmkdrivers/src26/drivers/ata/pata_jmicron.o vmkdrivers/src26/drivers/ata/pata_jmicron.c
$CC -m64 -s -fno-strict-aliasing -fno-working-directory ${DEBUG} -Wall -Werror -Wstrict-prototypes -fPIE -falign-functions=4 -falign-jumps=4 -falign-loops=4 -ffreestanding -fno-common -fno-omit-frame-pointer -fno-strength-reduce -march=x86-64 -mcmodel=small -minline-all-stringops -mno-red-zone -nostartfiles -nostdlib -Wno-error -Wno-unused-value -Wno-pointer-sign -Wno-strict-prototypes -DCONFIG_COMPAT -DCONFIG_PROC_FS -DCPU=x86-64 -DDEBUG_STUB -DESX3_NETWORKING_NOT_DONE_YET -DGPLED_CODE -DKBUILD_MODNAME=\"pata_jmicron\" -DLINUX_MODULE_AUX_HEAP_NAME=pata_jmicron -DLINUX_MODULE_HEAP_INITIAL=1024*100 -DLINUX_MODULE_HEAP_MAX=4*1024*4096 -DLINUX_MODULE_HEAP_NAME=pata_jmicron -DLINUX_MODULE_SKB_HEAP -DLINUX_MODULE_SKB_HEAP_INITIAL=512*1024 -DLINUX_MODULE_SKB_HEAP_MAX=22*1024*1024 -DLINUX_MODULE_VERSION=\"0.1.4\"  -DMODULE -DNET_DRIVER -DSCONS_NO_GVMOMI -DSMP_CAPABLE_VMK_DRIVER -DVMKERNEL_MODULE -DVMK_DEVKIT_HAS_API_VMKAPI_BASE -DVMK_DEVKIT_HAS_API_VMKAPI_DEVICE -DVMK_DEVKIT_HAS_API_VMKAPI_NET -DVMK_DEVKIT_HAS_API_VMKAPI_NPIV -DVMK_DEVKIT_HAS_API_VMKAPI_SCSI -DVMNIX -DVMX86_RELEASE -DVMX86_SERVER -DVMX86_VPROBES -D_LINUX -D__COMPAT_LAYER_2_6_18_PLUS__ -D__KERNEL__ -D__USE_COMPAT_LAYER_2_6_18_PLUS__ -DCONFIG_pata_jmicron_NAPI -D__VMKERNEL_MODULE__ -D__VMKERNEL__ -D__VMKLNX__ -D__VMK_GCC_BUG_ALIGNMENT_PADDING__ -D__VMWARE__ -Ivmkdrivers/src26/drivers/ata -Ibora/build/scons/build/version -Ibora/vmkernel/include/vmkapi -Ivmkdrivers/src26/include -Ivmkdrivers/src26/include/vmklinux26 -Ibora/build/scons/build/HEADERS/vmkdrivers-asm-x64/vmkernel64/release -Ibora/build/scons/build/HEADERS/vmkdrivers-asm-x64/vmkernel64/release/mac-default -Ibora/build/scons/build/HEADERS/vmkdrivers-vmkernel/vmkernel64/release -Ivmkdrivers/src26/drivers/ata -include bora/vmkernel/distribute/push-hidden.h -include vmkdrivers/src26/include/linux/autoconf.h -c -o bora/build/scons/build/vmkdriver-pata_jmicron.o/release/vmkernel64/SUBDIRS/vmkdrivers/src26/common/vmklinux_module.o vmkdrivers/src26/common/vmklinux_module.c

$LD -m elf_x86_64 -E -r -o bora/build/scons/build/vmkdriver-pata_jmicron.o/release/vmkernel64/pata_jmicron.o --whole-archive bora/build/scons/build/vmkdriver-pata_jmicron.o/release/vmkernel64/SUBDIRS/vmkdrivers/src26/drivers/ata/pata_jmicron.o bora/build/scons/build/vmkdriver-pata_jmicron.o/release/vmkernel64/SUBDIRS/vmkdrivers/src26/common/vmklinux_module.o

echo "All done"
