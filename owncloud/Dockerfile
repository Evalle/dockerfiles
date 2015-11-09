FROM opensuse:latest
MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-09-11

RUN zypper ar http://download.opensuse.org/repositories/isv:/ownCloud:/community/openSUSE_13.2/isv:ownCloud:community.repo
RUN zypper -n --gpg-auto-import-keys ref
RUN zypper -n --gpg-auto-import-keys install owncloud 

RUN  touch /etc/apache2/sysconfig.d/include.conf

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]
