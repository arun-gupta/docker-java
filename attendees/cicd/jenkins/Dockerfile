FROM jenkins

USER root

RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-latest > /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

RUN docker --version