---
layout: default
---

# Unofficial EDK2 nightly build

This repository provides unofficial
[tianocore/edk2](https://github.com/tianocore/edk2)
nightly build.
It currently builds
[OVMF](https://github.com/tianocore/tianocore.github.io/wiki/OVMF)
and
[UEFI Shell](https://github.com/tianocore/tianocore.github.io/wiki/Shell)
for x64 both Release and Debug.

## Pre-built binaries

### UEFI images for QEMU

* OVMF x64 Release
  * [RELEASEX64\_OVMF.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEX64_OVMF.fd)
  * [RELEASEX64\_OVMF\_CODE.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEX64_OVMF_CODE.fd)
  * [RELEASEX64\_OVMF\_VARS.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEX64_OVMF_VARS.fd)

* OVMF x64 Debug
  * [DEBUGX64\_OVMF.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGX64_OVMF.fd)
  * [DEBUGX64\_OVMF\_CODE.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGX64_OVMF_CODE.fd)
  * [DEBUGX64\_OVMF\_VARS.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGX64_OVMF_VARS.fd)

* ArmVirtQemu AArch64 Release
  * [RELEASEAARCH64\_QEMU\_EFI.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEAARCH64_QEMU_EFI.fd)
  * [RELEASEAARCH64\_QEMU\_VARS.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEAARCH64_QEMU_VARS.fd)

* ArmVirtQemu AArch64 Debug
  * [DEBUGAARCH64\_QEMU\_EFI.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGAARCH64_QEMU_EFI.fd)
  * [DEBUGAARCH64\_QEMU\_VARS.fd](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGAARCH64_QEMU_VARS.fd)

### UEFI Shell

* UEFI Shell x64 Release
  * [RELEASEX64\_Shell.efi](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEX64_Shell.efi)

* UEFI Shell x64 Debug
  * [DEBUGX64\_Shell.efi](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGX64_Shell.efi)

* UEFI Shell AArch64 Release
  * [RELEASEAARCH64\_Shell.efi](https://github.com/retrage/edk2-nightly/raw/master/bin/RELEASEAARCH64_Shell.efi)

* UEFI Shell AArch64 Debug
  * [DEBUGAARCH64\_Shell.efi](https://github.com/retrage/edk2-nightly/raw/master/bin/DEBUGAARCH64_Shell.efi)

## Build system

The build system is constructed on the top of CircleCI using
[Dockerfile](Dockerfile)
The nightly build is scuduled at 00:00 UTC every day.
Please see
[.circleci/config.yml](.circleci/config.yml)
for more details.
