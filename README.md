# linux-knowledge-base
Collection of knowledge on all things linux 🐧

This repository is a collection of notes, links and code related to knowledge related to linux.

## Shell Basics

## eBPF

- [Website](https://ebpf.io/)
- "JavaScript for Linux"
- Have code run in the kernel but with less destructive power compared to kernel modules
- Verifier

## OSTree

- [Website](https://ostreedev.github.io/ostree/)
- "git for os-binaries"
- immutable image-based (or self-managed?) systems
- Fedora Silverblue, CoreOS, IoT

## Security

### Capabilities

### SELinux

[Video: Security-Enhanced Linux for mere mortals](https://www.youtube.com/watch?v=_WOKRaM-HI4)

[PDF: Security-Enhanced Linux for mere mortals](https://videos.cdn.redhat.com/summit2015/presentations/13893_security-enhanced-linux-for-mere-mortals.pdf)

[Cheat Sheet](https://gist.github.com/OtherDevOpsGene/c73f8fc03c4fe4b6487a88de9cb0186c)

## Virtualization

### Qemu / kvm

### libvirt

### Firecracker

## Building Linux Systems

### Linux from Scratch (lfs)

[linuxfromscratch.org/lfs](https://www.linuxfromscratch.org/lfs/)

Handbook for building a linux system from scratch by building all components from source.

Includes a 'sys-v init' and a 'systemd' version.

### Buildroot

Linux image builder based on [Buildroot](https://buildroot.org):
[fwilhe2/buildroot-image-builder](https://github.com/fwilhe2/buildroot-image-builder)

Buildroot automatically creates root filesystems based on configuration.
It is geared towards embedded systems and has multiple output formats.
It can generate OCI images, qemu images and images for actual hardware platforms such as the raspi.

[Slides by Jérémy Rosen: Buildroot - Using embedded tools to build container images](https://cfp.all-systems-go.io/media/buildroot_containers.pdf)

Makefiles

Builds toolchains from scratch, compiles kernel and userland from scratch

### mkosi

[github.com/systemd/mkosi](https://github.com/systemd/mkosi)

> A fancy wrapper around `dnf --installroot`, `apt`, `pacman` and `zypper` that generates customized disk images with a number of bells and whistles.

Written in Python

Uses binary packages

Puts out new releases often, needs a very new systemd version that might not be available in mainstream linux distributions

[Repo with vm definition to build mkosi images](https://github.com/fwilhe2/mkosi-dev)

### debvm

[salsa.debian.org/helmutg/debvm](https://salsa.debian.org/helmutg/debvm)

Specific to debian

Based on `mmdebstrap`.

Creates disk image without bootloader, relies on qemu for that.

### LinuxKit

[github.com/linuxkit/linuxkit](https://github.com/linuxkit/linuxkit)

> A toolkit for building secure, portable and lean operating systems for containers

Written in Go

Uses yaml manifests

Based on Containers

Used for Docker Desktop

### Wolfi

[Introducing Wolfi: The first Linux (un)distro designed for securing the software supply chain](https://www.chainguard.dev/unchained/introducing-wolfi-the-first-linux-un-distro)

[Wolfi OS github home](https://github.com/wolfi-dev)

Built for container base images, does not seem to include a kernel a all.

Based on Alpine Linux tooling (apk package manager), but uses glibc instead of musl for larger compatibility.

Uses [melange](https://github.com/chainguard-dev/melange) for building distro packages.
[Example file for building a package, including applying patches](https://github.com/wolfi-dev/os/blob/a9487db56d1da1938c731f0f55f5dc7bb903a9d9/bzip2.yaml#L1).

### mkuimage

[mkuimage](https://github.com/u-root/mkuimage)

>  Create small Go-based root file systems -- with support for CPIOs and (TBD) Docker images 

## Containers

See [containers-knowledge-base](https://github.com/fwilhe2/containers-knowledge-base/)

## References

[How to quickly build a trimmed Linux kernel](https://docs.kernel.org/admin-guide/quickly-build-trimmed-linux.html)
