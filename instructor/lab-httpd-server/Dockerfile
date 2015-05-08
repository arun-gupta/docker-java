FROM fedora:21

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Change Workdir to apache dir
WORKDIR /var/www/html/


#Install wget and Apache HTTPD
RUN yum -y update && yum clean all
RUN yum -y install httpd && yum clean all
RUN echo "Apache" >> /var/www/html/index.html
RUN yum install -y wget

#Get Boot2docker 1.5
RUN wget https://github.com/boot2docker/boot2docker/releases/download/v1.5.0/boot2docker.iso


#Get VirtualBox for MAC
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-OSX.dmg

#Get VirtualBox for Windows
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Win.exe

#Get VirtualBox for Linux (All Distros)
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Linux_amd64.run

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command 
CMD ["/run-apache.sh"]

