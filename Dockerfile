FROM tomcat
MAINTAINER swapnil 
COPY webapp/target/webapp.war /usr/local/tomcat/webapp
