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

## Virtualization

### Qemu / kvm

### libvirt

### Firecracker

## Building Linux Systems

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

### LinuxKit

[github.com/linuxkit/linuxkit](https://github.com/linuxkit/linuxkit)

> A toolkit for building secure, portable and lean operating systems for containers

Written in Go

Uses yaml manifests

Based on Containers

Used for Docker Desktop



## Containers

See [containers-knowledge-base](https://github.com/fwilhe2/containers-knowledge-base/)

## References

[leemhuis.info: How to quickly build a trimmed Linux kernel](https://www.leemhuis.info/files/misc/How%20to%20quickly%20build%20a%20trimmed%20Linux%20kernel%20%e2%80%94%20The%20Linux%20Kernel%20documentation.html)
