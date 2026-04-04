# Unofficial EDK2 nightly build

This repository provides unofficial
[tianocore/edk2](https://github.com/tianocore/edk2)
nightly builds.
It currently builds
[OVMF](https://github.com/tianocore/tianocore.github.io/wiki/OVMF)
for x64, RISC-V 64-bit, and LoongArch64,
[ArmVirtPkg](https://github.com/tianocore/tianocore.github.io/wiki/ArmVirtPkg)
for AArch64,
and
[UEFI Shell](https://github.com/tianocore/tianocore.github.io/wiki/Shell)
for x64, IA-32, AArch64, RISC-V 64-bit, and LoongArch64 both Debug and Release.

## NOTE

IA32 support for OVMF has been removed by https://github.com/tianocore/edk2/commit/1fb88ffe284782cc79e306306b8d19829b6248b7.

ARM support for ArmVirtPkg has been removed by https://github.com/tianocore/edk2/commit/b471ed29694c375ea1b6b484eb71af73ed61fece.

ARM support for UEFI Shell has been removed by https://github.com/tianocore/edk2/commit/9c657c36856a47190eeba3bc24a44f575cf6b1a6.

## Pre-built binaries

### UEFI images for QEMU

|   GCC   |                                                                              DEBUG                                                                              |                                                                                   RELEASE                                                                                   |
|:-------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|   X64   |    [DEBUGX64\_OVMF.fd](bin/DEBUGX64_OVMF.fd)<br>[DEBUGX64\_OVMF\_CODE.fd](bin/DEBUGX64_OVMF_CODE.fd)<br>[DEBUGX64\_OVMF\_VARS.fd](bin/DEBUGX64_OVMF_VARS.fd)    |    [RELEASEX64\_OVMF.fd](bin/RELEASEX64_OVMF.fd)<br>[RELEASEX64\_OVMF\_CODE.fd](bin/RELEASEX64_OVMF_CODE.fd)<br>[RELEASEX64\_OVMF\_VARS.fd](bin/RELEASEX64_OVMF_VARS.fd)    |
| AARCH64 |                    [DEBUGAARCH64\_QEMU\_EFI.fd](bin/DEBUGAARCH64_QEMU_EFI.fd)<br>[DEBUGAARCH64\_QEMU\_VARS.fd](bin/DEBUGAARCH64_QEMU_VARS.fd)                   |                      [RELEASEAARCH64\_QEMU\_EFI.fd](bin/RELEASEAARCH64_QEMU_EFI.fd)<br>[RELEASEAARCH64\_QEMU\_VARS.fd](bin/RELEASEAARCH64_QEMU_VARS.fd)                     |
| RISCV64 | [DEBUGRISCV64\_VIRT.fd](bin/DEBUGRISCV64_VIRT.fd) (Not tested)                                                                                                 | [RELEASERISCV64\_VIRT.fd](bin/RELEASERISCV64_VIRT.fd) (Not tested)                                                                                                         |
| LOONGARCH64 |                    [DEBUGLOONGARCH64\_QEMU\_EFI.fd](bin/DEBUGLOONGARCH64_QEMU_EFI.fd) (Not tested) <br>[DEBUGLOONGARCH64\_QEMU\_VARS.fd](bin/DEBUGLOONGARCH64_QEMU_VARS.fd)                   |                      [RELEASELOONGARCH64\_QEMU\_EFI.fd](bin/RELEASELOONGARCH64_QEMU_EFI.fd) (Not tested) <br>[RELEASELOONGARCH64\_QEMU\_VARS.fd](bin/RELEASELOONGARCH64_QEMU_VARS.fd)                     |

### UEFI Shell

|     GCC     |                             DEBUG                             |                              RELEASE                              |
|:-----------:|:-------------------------------------------------------------:|:-----------------------------------------------------------------:|
|     X64     |         [DEBUGX64\_Shell.efi](bin/DEBUGX64_Shell.efi)         |         [RELEASEX64\_Shell.efi](bin/RELEASEX64_Shell.efi)         |
|     IA32    |        [DEBUGIA32\_Shell.efi](bin/DEBUGIA32_Shell.efi)        |        [RELEASEIA32\_Shell.efi](bin/RELEASEIA32_Shell.efi)        |
|   AARCH64   |     [DEBUGAARCH64\_Shell.efi](bin/DEBUGAARCH64_Shell.efi)     |     [RELEASEAARCH64\_Shell.efi](bin/RELEASEAARCH64_Shell.efi)     |
|   RISCV64   |     [DEBUGRISCV64\_Shell.efi](bin/DEBUGRISCV64_Shell.efi)     |     [RELEASERISCV64\_Shell.efi](bin/RELEASERISCV64_Shell.efi)     |
| LOONGARCH64 | [DEBUGLOONGARCH64\_Shell.efi](bin/DEBUGLOONGARCH64_Shell.efi) | [RELEASELOONGARCH64\_Shell.efi](bin/RELEASELOONGARCH64_Shell.efi) |

## Deprecated binary images


|     GCC     |                             DEBUG                             |                              RELEASE                              |
|:-----------:|:-------------------------------------------------------------:|:-----------------------------------------------------------------:|
|   IA32  | [DEBUGIa32\_OVMF.fd](bin/DEBUGIa32_OVMF.fd)<br>[DEBUGIa32\_OVMF\_CODE.fd](bin/DEBUGIa32_OVMF_CODE.fd)<br>[DEBUGIa32\_OVMF\_VARS.fd](bin/DEBUGIa32_OVMF_VARS.fd) | [RELEASEIa32\_OVMF.fd](bin/RELEASEIa32_OVMF.fd)<br>[RELEASEIa32\_OVMF\_CODE.fd](bin/RELEASEIa32_OVMF_CODE.fd)<br>[RELEASEIa32\_OVMF\_VARS.fd](bin/RELEASEIa32_OVMF_VARS.fd) |
| ARM     | [DEBUGARM\_QEMU\_EFI.fd](bin/DEBUGARM_QEMU_EFI.fd)<br>[DEBUGARM\_QEMU\_VARS.fd](bin/DEBUGARM_QEMU_VARS.fd)                                                      | [RELEASEARM\_QEMU\_EFI.fd](bin/RELEASEARM_QEMU_EFI.fd)<br>[RELEASEARM\_QEMU\_VARS.fd](bin/RELEASEARM_QEMU_VARS.fd)                                                          |
|     ARM     |         [DEBUGARM\_Shell.efi](bin/DEBUGARM_Shell.efi)         |         [RELEASEARM\_Shell.efi](bin/RELEASEARM_Shell.efi)         |


## Build system

The build system is built on GitHub Actions using
[Dockerfile](Dockerfile)
and reusable workflows.
Workflows run for pull requests, pushes to `master`, and a nightly build at 00:00 UTC.
Please see
[.github/workflows/ci.yml](.github/workflows/ci.yml),
[.github/workflows/reusable-build-firmware.yml](.github/workflows/reusable-build-firmware.yml),
[.github/workflows/reusable-build-shell.yml](.github/workflows/reusable-build-shell.yml),
and
[.github/workflows/docker-image.yml](.github/workflows/docker-image.yml)
for more details.
