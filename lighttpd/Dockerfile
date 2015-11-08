FROM opensuse:13.2

MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-17-04

RUN zypper ar http://download.opensuse.org/repositories/server:/http/openSUSE_13.2/server:http.repo
RUN zypper -n --gpg-auto-import-keys refresh
RUN zypper -n --gpg-auto-import-keys install lighttpd

RUN touch /srv/www/htdocs/index.html

RUN echo 'lighttpd is working!' > /srv/www/htdocs/index.html

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

EXPOSE 80

CMD [ "lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]
