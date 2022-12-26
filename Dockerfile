FROM centos:7

RUN yum -y openssh-server && yum -y openssh-clients && yum -y openssh-askpass && yum install -y expect && yum install -y git && yum install -y crontab
RUN mkdir /scripts
WORKDIR /scripts
RUN git clone 
