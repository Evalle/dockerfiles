dockerfiles-opensuse-virtualbox
===============================

openSUSE Dockerfile for **Virtualbox** - a hypervisor for x86 computers from Oracle Corporation. 

This Dockerfile was inspired by amazing *Jesse Frazelle's* talk on last DockerCon (https://www.youtube.com/watch?v=1qlLUf7KtAw)  


**To build Docker image:**

```
$ sudo docker build -t <username>/<name_of_your_image> .
```

**Preparation steps:** 

First of all, you need to have a virtualbox kernel module installed on your system. 

If you're using openSUSE as host OS like me, you can install *'virtualbox-host-kmp-desktop'* package via:

```
$ sudo zypper in virtualbox-host-kmp-desktop 
```

and then just run *'insmod'* to install *vboxdrv.ko*: 

```
$ sudo insmod /lib/modules/$(uname -r)/updates/vboxdrv.ko
```

Secondary, if you're run docker as a regular user (e.g. *$ sudo docker ...*) you need to allow *local:root* to access local X server:

```
$ xhost local:root
```

**To run:**

```
$ sudo docker run -d -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY --privileged --name <container_name> <your_name/<name_of_your_image>
```

**To test:**

You can just mount iso image of some OS (windows, linux, you name it) to your container (via volumes) and create virtual machine inside virtualbox inside your container :)

Have a lot of fun!
