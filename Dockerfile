# Pull tomcat latest image from dockerhub 
FROM tomcat:9
# Maintainer
MAINTAINER "subhasish" 

# copy war file on to container 
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
RUN sh /usr/local/tomcat/bin/startup.sh
EXPOSE 8080
CMD ["catalina.sh", "run"]
