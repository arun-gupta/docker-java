FROM jenkinsci/jenkins

USER root

RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-latest > /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

RUN curl -L http://apache.uib.no/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip -o /tmp/apache-maven-3.3.3-bin.zip
RUN unzip /tmp/apache-maven-3.3.3-bin.zip -d /tmp
ENV PATH /tmp/apache-maven-3.3.3/bin:$PATH

#USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

#RUN docker --version
