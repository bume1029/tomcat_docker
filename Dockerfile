#FROM tomcat:8.0-jre7	
#FROM tomcat:8.0-jre8	
#FROM tomcat:9	
FROM tomcat:7-jre7	
#FROM tomcat:7-jre8	
MAINTAINER bskim <bum1029@gmail.com> 

USER root

# Install Util
RUN apt-get update && apt-get install -y stress telnet net-tools procps tcpdump

EXPOSE 8080
CMD ["catalina.sh", "run"]
