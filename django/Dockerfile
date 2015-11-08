FROM opensuse:latest

MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"

ENV REFRESHED_AT 2015-09-11

RUN zypper -n --gpg-auto-import-keys refresh
RUN zypper -n --gpg-auto-import-keys install python-pip python-django git sqlite3

EXPOSE 8080

CMD [ "/bin/bash" ]
