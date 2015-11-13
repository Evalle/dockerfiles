FROM opensuse:42.1

MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-09-11

RUN zypper -n --gpg-auto-import-keys ref
RUN zypper -n --gpg-auto-import-keys install memcached 

EXPOSE 11211

CMD ["memcached", "-u", "daemon"]
