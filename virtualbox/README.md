dockerfiles-opensuse-virtualbox
===============================

OpenSUSE Dockerfile for **Virtualbox** - a hypervisor for x86 computers from Oracle Corporation. 

This Dockerfile was inspired by amazing *Jesse Frazelle's* talk on last DockerCon (https://www.youtube.com/watch?v=1qlLUf7KtAw)  


**To build Docker image:**

```
$ sudo docker build -t <username>/virtualbox .
```

**Preparation steps:** 

First of all, you need to have a virtualbox kernel module installed on your system. 

1) If you're using openSUSE like me, you can install *'virtualbox-host-kmp-desktop'* package via:

```
$ sudo zypper in virtualbox-host-kmp-desktop 
```

and then just run 'insmod' to install vboxdrv.ko: 

```
$ sudo insmod /lib/modules/$(uname -r)/updates/vboxdrv.ko
```

Secondary, if you're run docker as a regular user (e.g. *$ sudo docker ...*) you need to allow *local:root* to access local X server:

```
$ xhost local:root
```

**To run:**


**To test:**

```
```

```
```

