FROM fedora:22

MAINTAINER Rafael Benevides <benevides@redhat.com>

#Install wget and Apache HTTPD
RUN dnf -y update && dnf -y install httpd wget && dnf clean all
ADD index.html  /var/www/html/

RUN mkdir -p /var/www/html/downloads

#Change Workdir to apache dir
WORKDIR /var/www/html/downloads

#Place JBDS inside the image
ADD downloads/jboss-devstudio-9.0.0.Beta2-v20150609-1026-B3346-installer-standalone.jar /var/www/html/downloads/

#Setup permission for JBDS
RUN chmod 644 /var/www/html/downloads/jboss-devstudio-9.0.0.Beta2-v20150609-1026-B3346-installer-standalone.jar

#Get WildFly 8.2
RUN wget http://download.jboss.org/wildfly/8.2.0.Final/wildfly-8.2.0.Final.zip

#Get Boot2docker 1.6.1
RUN wget https://github.com/boot2docker/boot2docker/releases/download/v1.6.1/boot2docker.iso

#Get VirtualBox for MAC
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-OSX.dmg

#Get VirtualBox for Windows
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Win.exe

#Get VirtualBox for Linux (All Distros)
RUN wget http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-Linux_amd64.run

#Get Git for Windows
RUN wget https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20150319/Git-1.9.5-preview20150319.exe

#Get Docker Machine Windows
RUN wget https://github.com/docker/machine/releases/download/v0.3.0-rc1/docker-machine_windows-amd64.exe

#Get Docker Machine MacOS
RUN wget https://github.com/docker/machine/releases/download/v0.3.0-rc1/docker-machine_darwin-amd64

#Get Docker Machine Linux
RUN wget https://github.com/docker/machine/releases/download/v0.3.0-rc1/docker-machine_linux-amd64

#Get Docker Client Mac OS
RUN curl -L https://get.docker.com/builds/Darwin/x86_64/docker-latest -o docker-latest-mac

#Get Docker Client Linux
RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-latest -o docker-latest-linux

#Get Docker Client Windows
RUN wget http://test.docker.com.s3.amazonaws.com/builds/Windows/x86_64/docker-1.6.0.exe

#Get Maven binaries
RUN wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip
RUN wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz

#Get Vagrant MacOS
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2.dmg -o vagrant_1.7.2.dmg

#Get Vagrant Windows
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2.msi -o vagrant_1.7.2.msi

#Get Vagrant Debian 64-bit
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb -o vagrant_1.7.2_x86_64.deb

#Get Vagrant Linux 64-bit
RUN curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.rpm -o vagrant_1.7.2_x86_64.rpm

#Get Kubernetes
RUN wget https://github.com/GoogleCloudPlatform/kubernetes/releases/download/v0.18.1/kubernetes.tar.gz

#Add other files to downloads
ADD downloads/lab-settings.xml /var/www/html/downloads/

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

#Run the default apache command 
CMD ["/run-apache.sh"]

