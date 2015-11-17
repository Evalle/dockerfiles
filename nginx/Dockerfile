FROM opensuse:42.1
MAINTAINER Evgeny Shmarnev "eshmarnev@suse.com"
ENV REFRESHED_AT 2015-17-11

RUN zypper ar http://download.opensuse.org/repositories/server:/http/openSUSE_13.2/server:http.repo
RUN zypper -n --gpg-auto-import-keys refresh
RUN zypper -n --gpg-auto-import-keys install nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN touch /srv/www/htdocs/index.html
RUN echo "nginx is working" > /srv/www/htdocs/index.html

EXPOSE 80

CMD [ "/usr/sbin/nginx" ]
