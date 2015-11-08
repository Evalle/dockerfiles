#See the official documentation for more details, and additional instructions
#https://docs.docker.com/articles/dockerfile_best-practices/
#
#FROM gives you the ability to specify which official repository to 
#use - if you want the latest and greatest, use opensuse:latest
FROM opensuse:latest
#
MAINTAINER your@emailaddress.com
#
#What would you like to run in your container?
RUN zypper --non-interactive --no-gpg-checks in apache2
#
#The CMD instruction should be used to run the software contained by your image
CMD ["/usr/sbin/start_apache2","-DFOREGROUND"]
#
#The EXPOSE instruction indicates the ports on which a container will listen 
#for connections.
EXPOSE 80
#
#you can use ENV to update the PATH environment variable for the software your
#container installs
#ENV PATH /usr/local/myapp/bin:$PATH
#
#Copy a local file in your container
#COPY myfile.txt /tmp/myfile.txt
#
#The VOLUME instruction should be used to expose any database storage area,
# configuration storage, or files/folders created by your docker container
#VOLUME
#
#If a service can run without privileges, use USER to change to a non-root user.
#USER
#
#Specify your work path, use absolute paths!
#WORKDIR

