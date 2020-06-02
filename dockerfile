
FROM centos
MAINTAINER itlabs11 <itlabsconsult@gmail.com>
RUN touch /opt/suneetha
RUN yum install git -y
RUN git config --global user.name "sammygit02"
RUN git config --global user.email "itlabsconsult@gmail.com"
RUN cd /opt && git clone https://github.com/sammygit02/itdept.git
RUN yum install java -y
RUN yum install maven -y
RUN yum install wget -y
RUN mkdir /opt/tomcat
RUN cd /opt/tomcat && wget http://www.trieuvan.com/apache/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz
RUN cd /opt/tomcat && tar -xvf apache-tomcat-9.0.34.tar.gz
