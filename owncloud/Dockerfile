FROM opensuse:13.2
MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-15-04

RUN zypper ar http://download.opensuse.org/repositories/isv:/ownCloud:/community/openSUSE_13.2/isv:ownCloud:community.repo
RUN zypper -n --gpg-auto-import-keys ref
RUN zypper -n --gpg-auto-import-keys install owncloud 

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]
