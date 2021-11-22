FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:linuxuprising/java &&  apt-get update && apt-get install -y openjdk-11-jdk ufw wget gnupg 
#RUN apt-key adv —keyserver keyserver.ubuntu.com —recv-keys EA8CACC073C3DB2A
RUN printf 'enter' | add-apt-repository ppa:linuxuprising/java
RUN mkdir -p /var/cache/oracle-jdk11-installer-local/
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt install -y jenkins
