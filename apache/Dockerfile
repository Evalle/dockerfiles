FROM opensuse:42.1

MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-08-1

RUN zypper -n --gpg-auto-import-keys refresh
RUN zypper -n --gpg-auto-import-keys install apache2

RUN touch /srv/www/htdocs/index.html
RUN echo "Apache works!" > /srv/www/htdocs/index.html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD [ "-D", "FOREGROUND" ]
