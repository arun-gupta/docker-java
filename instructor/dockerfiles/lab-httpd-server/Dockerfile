FROM fedora:21

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Install wget and Apache HTTPD
RUN yum -y update && yum clean all
RUN yum -y install httpd wget && yum clean all
ADD index.html  /var/www/html/

RUN mkdir -p /var/www/html/downloads

#Change Workdir to apache dir
WORKDIR /var/www/html/downloads

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

#Get Maven binaries
RUN wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip
RUN wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz

#Add other files to downloads
ADD lab-settings.xml /var/www/html/downloads/


EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command 
CMD ["/run-apache.sh"]

