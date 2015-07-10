# Run virtualbox in the container

FROM opensuse:13.2
MAINTAINER Evgeny Shmarnev "shmarnev@gmail.com"
ENV REFRESHED_AT 2015_07_10

RUN zypper -n --gpg-auto-import-keys install virtualbox virtualbox-qt xorg-x11-fonts-core xorg-x11-fonts

ENTRYPOINT  [ "/usr/bin/VirtualBox" ]
