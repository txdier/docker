FROM tomcat8/jdk8:v9
ADD peidou-consume.war /opt/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]
VOLUME ["/logs"]
EXPOSE 8080