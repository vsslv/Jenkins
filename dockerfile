FROM ubuntu:latest
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:linuxuprising/java
RUN apt-get install -y curl
RUN curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]  https://pkg.jenkins.io/debian binary/ | tee  /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN apt-get update && apt-get install -y jenkins openjdk-8-jdk openjdk-8-jre
