#!/bin/sh


#DEBUG="-gdwarf-2 -g3"

# Use gcc version 4.1.2
CC=gcc-4.1
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
$MKDIR -p package/usr/lib/vmware/vmkmod

# Compiler flags assume being compiled natively on a x86-64 machine
$CC -fwrapv -fno-working-directory -g -ggdb3 -O2 -fno-strict-aliasing -Wall -Werror -Wstrict-prototypes -fPIE -falign-functions=4 -falign-jumps=4 -falign-loops=4 -ffreestanding -fno-common -fno-omit-frame-pointer -fno-strength-reduce -march=x86-64 -mcmodel=small -minline-all-stringops -mno-red-zone -nostartfiles -nostdlib --sysroot=/nowhere -Wall -Wdeclaration-after-statement -Wno-unused-value -Wno-pointer-sign -Wno-strict-prototypes -Wno-declaration-after-statement -Wno-declaration-after-statement -DCONFIG_COMPAT -DCPU=x86-64 -DDEBUG_STUB -DEXPORT_SYMTAB -DGPLED_CODE -DKBUILD_MODNAME=\"pata_jmicron\" -DLINUX_MODULE_AUX_HEAP_NAME=vmklnx_pata_jmicron -DLINUX_MODULE_HEAP_INITIAL=64*1024 -DLINUX_MODULE_HEAP_MAX=8*1024*1024 -DLINUX_MODULE_HEAP_NAME=vmklnx_pata_jmicron -DLINUX_MODULE_VERSION=\"0.1.5\" -DMODULE -DVMKERNEL_MODULE -DVMK_DEVKIT_HAS_API_VMKAPI_BASE -DVMK_DEVKIT_HAS_API_VMKAPI_DEVICE -DVMK_DEVKIT_HAS_API_VMKAPI_ISCSI -DVMK_DEVKIT_HAS_API_VMKAPI_NET -DVMK_DEVKIT_HAS_API_VMKAPI_SCSI -DVMK_DEVKIT_IS_DDK -DVMK_DEVKIT_USES_BINARY_COMPATIBLE_APIS -DVMK_DEVKIT_USES_PUBLIC_APIS -DVMNIX -DVMX86_RELEASE -DVMX86_SERVER -DVMX86_VPROBES -D_LINUX -D_VMKDRVEI -D__KERNEL__ -D__VMKERNEL_MODULE__ -D__VMKERNEL__ -D__VMKLNX__ -D__VMK_GCC_BUG_ALIGNMENT_PADDING__ -D__VMWARE__ -Ivmkdrivers/src_9/drivers/ata -IBLD/build/version -IBLD/build/HEADERS/vmkdrivers-vmkernel/vmkernel64/release -Ivmkdrivers/src_9/include -Ivmkdrivers/src_9/include/vmklinux_9 -IBLD/build/HEADERS/CUR-9-vmkdrivers-asm-x64/vmkernel64/release -IBLD/build/HEADERS/vmkapi-current-all-public-bincomp/vmkernel64/release -include bora/vmkernel/distribute/push-hidden.h -include vmkdrivers/src_9/include/linux/autoconf.h -c -o pata_jmicron.o pata_jmicron.c
$CC -fwrapv -fno-working-directory -g -ggdb3 -O2 -fno-strict-aliasing -Wall -Werror -Wstrict-prototypes -fPIE -falign-functions=4 -falign-jumps=4 -falign-loops=4 -ffreestanding -fno-common -fno-omit-frame-pointer -fno-strength-reduce -march=x86-64 -mcmodel=small -minline-all-stringops -mno-red-zone -nostartfiles -nostdlib --sysroot=/nowhere -Wall -Wdeclaration-after-statement -Wno-unused-value -Wno-pointer-sign -Wno-strict-prototypes -Wno-declaration-after-statement -Wno-declaration-after-statement -DCONFIG_COMPAT -DCPU=x86-64 -DDEBUG_STUB -DEXPORT_SYMTAB -DGPLED_CODE -DKBUILD_MODNAME=\"pata_jmicron\" -DLINUX_MODULE_AUX_HEAP_NAME=vmklnx_pata_jmicron -DLINUX_MODULE_HEAP_INITIAL=64*1024 -DLINUX_MODULE_HEAP_MAX=8*1024*1024 -DLINUX_MODULE_HEAP_NAME=vmklnx_pata_jmicron -DLINUX_MODULE_VERSION=\"0.1.5\" -DMODULE -DVMKERNEL_MODULE -DVMK_DEVKIT_HAS_API_VMKAPI_BASE -DVMK_DEVKIT_HAS_API_VMKAPI_DEVICE -DVMK_DEVKIT_HAS_API_VMKAPI_ISCSI -DVMK_DEVKIT_HAS_API_VMKAPI_NET -DVMK_DEVKIT_HAS_API_VMKAPI_SCSI -DVMK_DEVKIT_IS_DDK -DVMK_DEVKIT_USES_BINARY_COMPATIBLE_APIS -DVMK_DEVKIT_USES_PUBLIC_APIS -DVMNIX -DVMX86_RELEASE -DVMX86_SERVER -DVMX86_VPROBES -D_LINUX -D_VMKDRVEI -D__KERNEL__ -D__VMKERNEL_MODULE__ -D__VMKERNEL__ -D__VMKLNX__ -D__VMK_GCC_BUG_ALIGNMENT_PADDING__ -D__VMWARE__ -Ivmkdrivers/src_9/drivers/ata -IBLD/build/version -IBLD/build/HEADERS/vmkdrivers-vmkernel/vmkernel64/release -Ivmkdrivers/src_9/include -Ivmkdrivers/src_9/include/vmklinux_9 -IBLD/build/HEADERS/CUR-9-vmkdrivers-asm-x64/vmkernel64/release -IBLD/build/HEADERS/vmkapi-current-all-public-bincomp/vmkernel64/release -IHEADERS -include bora/vmkernel/distribute/push-hidden.h -include vmkdrivers/src_9/include/linux/autoconf.h -c -o vmklinux_module.o vmkdrivers/src_9/common/vmklinux_module.c

$LD -r -o package/usr/lib/vmware/vmkmod/pata_jmicron --whole-archive vmklinux_module.o

echo "All done"
