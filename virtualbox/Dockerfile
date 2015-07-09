#Run virtualbox in a container
#
# docker run -d \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -e DISPLAY=unix$DISPLAY \
#   --privileged \
#   --name virtualbox \
#   evalle/virtualbox
#
# On first run it will throw an error that you need to
# recompile the kernel module with: /etc/init.d/vboxdrv setup
#
# Here is how you get it to work:
# copy the files you need for the module from the container that
# is currently running to your host
#
# first the script:
#   docker cp virtualbox:/etc/init.d/vboxdrv .
#
# then the src:
#   docker cp virtualbox:/usr/src/vboxhost-4.3.28 /usr/src/
#
# then the share
#   docker cp virtualbox:/usr/share/virtualbox /usr/share
#
# then run the script:
#   ./vboxdrv setup
#
# it will recompile the module, you can then see it in lsmod
#
# then you can remove all files that you've copied
#   rm -rf /usr/src/vboxhost*
#   rm -rf /usr/share/virtualbox
#   rm vboxdrv
#
FROM opensuse:13.2
MAINTAINER Evgeny Shmarnev "shmarnev@gmail.com"
ENV REFRESHED_AT 2015_07_09

RUN zypper -n --gpg-auto-import-keys ref
RUN zypper -n --gpg-auto-import-keys install virtualbox virtualbox-qt xorg-x11-fonts-core xorg-x11-fonts

ENTRYPOINT  [ "/usr/bin/VirtualBox" ]
