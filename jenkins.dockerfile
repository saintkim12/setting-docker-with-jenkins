# dind-jenkins
FROM jenkins/jenkins:lts

USER root
RUN apt-get update -qq
RUN apt-get install -y sudo
RUN echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER jenkins
