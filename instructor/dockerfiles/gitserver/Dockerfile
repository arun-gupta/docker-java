# Use latest jboss/wildfly
FROM fedora

MAINTAINER "Rafael Benevides" <benevides@redhat.com>

#Install wget and Apache HTTPD
RUN yum -y update && yum clean all
RUN yum install -y git passwd gitolite3 openssh-server

#First Login as root & Add user called "git" 
RUN useradd git
RUN echo git |passwd git --stdin

#Now Login as root to any local system & Add user called "gitadmin"
RUN useradd gitadmin
RUN echo gitadmin |passwd gitadmin --stdin

#Switch to User gitadmin & generate ssh key as shown
USER gitadmin
RUN ssh-keygen -t rsa -N "" -f /home/gitadmin/.ssh/id_rsa

#Copy ssh public key as gitadmin.pub
RUN cp /home/gitadmin/.ssh/id_rsa.pub /home/gitadmin/gitadmin.pub
