pata_jmicron
=============
ESXi 5.0 JMicron ATA Driver for non AHCI mode

Build instructions
------------------
1. Clone the repo
2. Download VMware ESXI 5.0 source from http://downloads.vmware.com/d/details/vsphere_50_oss/dHRAYnRocGRiZHAlJQ==
3. Extract contents of source package, and extract the contents of the vmkdrivers-gpl.tar.gz
4. Copy the files from the cloned working copy into the extracted vmkdrivers-gpl folder
5. run build-vmkdrivers-pata_jmicron.sh
6. Compress the contents of the package folder where the built driver is placed
7. Use http://www.v-front.de/p/esxi5-community-packaging-tools.html to create a VIB containing the driver

You will have to have GCC 4.1.2 and its toolchain installed to successfully build pata_jmicron. A Fresh install of [Ubuntu 10.10 - Maverick Meerkat](http://releases.ubuntu.com/10.10/) works well as newer versions of Ubuntu don't have gcc-4.1.

