FROM fedora:21

MAINTAINER Rafael Benevides <benevides@redhat.com>

RUN mkdir -p /var/www/html/downloads

#Change Workdir to apache dir
WORKDIR /var/www/html/downloads

#Install wget and Apache HTTPD
RUN yum -y update && yum clean all
RUN yum -y install httpd && yum clean all
RUN echo "Apache" >> /var/www/html/index.html
RUN yum install -y wget

#Get Boot2docker 1.5
RUN wget https://github.com/boot2docker/boot2docker/releases/download/v1.6.1/boot2docker.iso


#Get VirtualBox for MAC
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-OSX.dmg

#Get VirtualBox for Windows
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Win.exe

#Get VirtualBox for Linux (All Distros)
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Linux_amd64.run

#Get Git for Windows
RUN wget https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20150319/Git-1.9.5-preview20150319.exe

#Get Docker Machine w4
RUN wget https://github.com/docker/machine/releases/download/v0.2.0/docker-machine_windows-amd64.exe

#Get Docker Maschine MacOS
RUN wget https://github.com/docker/machine/releases/download/v0.2.0/docker-machine_darwin-amd64

#Get Docker Client Windows
RUN wget http://test.docker.com.s3.amazonaws.com/builds/Windows/x86_64/docker-1.6.0.exe 

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command 
CMD ["/run-apache.sh"]

