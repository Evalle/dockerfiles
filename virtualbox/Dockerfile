# Run virtualbox in the container
# Have a lot of fun ! 

FROM opensuse:tumbleweed
MAINTAINER Evgeny Shmarnev "shmarnev@gmail.com"
ENV REFRESHED_AT 2015_07_10

RUN zypper -n install virtualbox virtualbox-qt xorg-x11-fonts-core xorg-x11-fonts
# ADD path_to_your_iso /tmp 

ENTRYPOINT  [ "/usr/bin/VirtualBox" ]
