FROM opensuse:13.2
MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-16-04

RUN zypper -n --gpg-auto-import-keys ref
RUN zypper -n --gpg-auto-import-keys install memcached 

EXPOSE 11211

CMD ["memcached", "-u", "daemon"]
