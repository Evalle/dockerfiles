FROM opensuse:13.2

MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-15-04

RUN zypper -n --gpg-auto-import-keys refresh
RUN zypper -n --gpg-auto-import-keys update
RUN zypper -n --gpg-auto-import-keys install apache2

# adding include.conf file. Without it apache doesn't start . Probably a bug :/ 
RUN  touch /etc/apache2/sysconfig.d/include.conf

RUN touch /srv/www/htdocs/index.html
RUN echo "Apache works!" > /srv/www/htdocs/index.html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD [ "-D", "FOREGROUND" ]
