FROM jenkins/jenkins

ENV JENKINS_USER admin
ENV JENKINS_PASS admin

# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false


COPY ./jenkins-plugins /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER root

RUN apt-get update \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update  -qq \
    && apt-get install docker-ce -y
RUN usermod -aG docker jenkins
RUN apt-get clean
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

RUN apt-get update && apt-get install -y 
RUN apt-get install wget unzip 
# RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
COPY terraform  /usr/local/bin/



USER jenkins











































# FROM jenkins/jenkins:latest

# # volume for Jenkins settings
# VOLUME /var/jenkins_home
# ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# USER root
# RUN apt-get update && apt-get install -y 
# RUN apt-get install wget unzip 
# RUN wget https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip
# RUN unzip terraform_0.12.18_linux_amd64.zip -d /usr/local/bin/

# # USER jenkins

# # install jenkins plugins
# COPY ./jenkins-plugins /usr/share/jenkins/plugins
# RUN while read i ; \ 
#       do /usr/local/bin/install-plugins.sh $i ; \
#     done < /usr/share/jenkins/plugins

# EXPOSE 8080





