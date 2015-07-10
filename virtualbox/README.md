dockerfiles-opensuse-virtualbox
===============================

OpenSUSE Dockerfile for Virtualbox - a hypervisor for x86 computers from Oracle Corporation. 

This Dockerfile inspired by wonderful Jesse Frazelle's talk on DockerCon'15 (https://www.youtube.com/watch?v=1qlLUf7KtAw)  


To build:

```
$ sudo docker build -t <username>/virtualbox .
```

Preparation steps: 

First of all, you need to have a virtualbox kernel module in your system. There are two ways to install it:

1) If you're using openSUSE you can install *'virtualbox-host-kmp-desktop'* package via:

```
$ sudo zypper in virtualbox-host-kmp-desktop 
```

and then run 'insmod' to install vboxdrv.ko: 

```
sudo insmod /lib/modules/$(uname -r)/updates/vboxdrv.ko
```

2) 

Also, if you run docker as a regular user (e.g. *$ sudo docker ...*) you need to allow *local:root* to access local X server:

```
xhost local:root
```

To run:


To test:

```
```

```
```

