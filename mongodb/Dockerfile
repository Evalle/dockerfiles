FROM opensuse:42.1
MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-16-11

RUN zypper ar http://download.opensuse.org/repositories/server:database/openSUSE_13.2/server:database.repo
RUN zypper -n --gpg-auto-import-keys install mongodb 

RUN mkdir -p /data/db

EXPOSE 27017
ENTRYPOINT ["/usr/sbin/mongod"]
