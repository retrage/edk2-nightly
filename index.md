---
layout: default
---

# Unofficial EDK2 nightly build

This repository provides unofficial
[tianocore/edk2](https://github.com/tianocore/edk2)
nightly build.
It currently builds
[OVMF](https://github.com/tianocore/tianocore.github.io/wiki/OVMF)
for x64 and IA-32,
[ArmVirtPkg](https://github.com/tianocore/tianocore.github.io/wiki/ArmVirtPkg)
for AArch64 and ARM,
and
[UEFI Shell](https://github.com/tianocore/tianocore.github.io/wiki/Shell)
for x64, IA-32, AArch64, ARM, and RISC-V 64-bit both Debug and Release.

## Pre-built binaries

### UEFI images for QEMU

|   GCC5  |                                                                              DEBUG                                                                              |                                                                                   RELEASE                                                                                   |
|:-------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|   X64   |    [DEBUGX64\_OVMF.fd](bin/DEBUGX64_OVMF.fd)<br>[DEBUGX64\_OVMF\_CODE.fd](bin/DEBUGX64_OVMF_CODE.fd)<br>[DEBUGX64\_OVMF\_VARS.fd](bin/DEBUGX64_OVMF_VARS.fd)    |    [RELEASEX64\_OVMF.fd](bin/RELEASEX64_OVMF.fd)<br>[RELEASEX64\_OVMF\_CODE.fd](bin/RELEASEX64_OVMF_CODE.fd)<br>[RELEASEX64\_OVMF\_VARS.fd](bin/RELEASEX64_OVMF_VARS.fd)    |
|   IA32  | [DEBUGIA32\_OVMF.fd](bin/DEBUGIA32_OVMF.fd)<br>[DEBUGIA32\_OVMF\_CODE.fd](bin/DEBUGIA32_OVMF_CODE.fd)<br>[DEBUGIA32\_OVMF\_VARS.fd](bin/DEBUGIA32_OVMF_VARS.fd) | [RELEASEIA32\_OVMF.fd](bin/RELEASEIA32_OVMF.fd)<br>[RELEASEIA32\_OVMF\_CODE.fd](bin/RELEASEIA32_OVMF_CODE.fd)<br>[RELEASEIA32\_OVMF\_VARS.fd](bin/RELEASEIA32_OVMF_VARS.fd) |
| AARCH64 |                    [DEBUGAARCH64\_QEMU\_EFI.fd](bin/DEBUGAARCH64_QEMU_EFI.fd)<br>[DEBUGAARCH64\_QEMU\_VARS.fd](bin/DEBUGAARCH64_QEMU_VARS.fd)                   |                      [RELEASEAARCH64\_QEMU\_EFI.fd](bin/RELEASEAARCH64_QEMU_EFI.fd)<br>[RELEASEAARCH64\_QEMU\_VARS.fd](bin/RELEASEAARCH64_QEMU_VARS.fd)                     |
| ARM     | [DEBUGARM\_QEMU\_EFI.fd](bin/DEBUGARM_QEMU_EFI.fd)<br>[DEBUGARM\_QEMU\_VARS.fd](bin/DEBUGARM_QEMU_VARS.fd)                                                      | [RELEASEARM\_QEMU\_EFI.fd](bin/RELEASEARM_QEMU_EFI.fd)<br>[RELEASEARM\_QEMU\_VARS.fd](bin/RELEASEARM_QEMU_VARS.fd)                                                          |

### UEFI Shell

|   GCC5  |                         DEBUG                         |                          RELEASE                          |
|:-------:|:-----------------------------------------------------:|:---------------------------------------------------------:|
|   X64   |     [DEBUGX64\_Shell.efi](bin/DEBUGX64_Shell.efi)     |     [RELEASEX64\_Shell.efi](bin/RELEASEX64_Shell.efi)     |
|   IA32  |    [DEBUGIA32\_Shell.efi](bin/DEBUGIA32_Shell.efi)    |    [RELEASEIA32\_Shell.efi](bin/RELEASEIA32_Shell.efi)    |
| AARCH64 | [DEBUGAARCH64\_Shell.efi](bin/DEBUGAARCH64_Shell.efi) | [RELEASEAARCH64\_Shell.efi](bin/RELEASEAARCH64_Shell.efi) |
|   ARM   |     [DEBUGARM\_Shell.efi](bin/DEBUGARM_Shell.efi)     |     [RELEASEARM\_Shell.efi](bin/RELEASEARM_Shell.efi)     |
| RISCV64 | [DEBUGRISCV64\_Shell.efi](bin/DEBUGRISCV64_Shell.efi) | [RELEASERISCV64\_Shell.efi](bin/RELEASERISCV64_Shell.efi) |

## Build system

The build system is constructed on the top of CircleCI using
[Dockerfile](Dockerfile)
The nightly build is scuduled at 00:00 UTC every day.
Please see
[.circleci/config.yml](.circleci/config.yml)
for more details.
