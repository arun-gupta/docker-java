FROM fedora/apache

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Change Workdir to apache dir
WORKDIR /var/www/html/

#Install wget
RUN yum install -y wget

#Get Boot2docker 1.5
RUN wget https://github.com/boot2docker/boot2docker/releases/download/v1.5.0/boot2docker.iso

#Run the default apache command 
CMD ["/run-apache.sh"]