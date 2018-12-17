FROM alpine:latest
MAINTAINER Anastas Dancha <qiao.li@xiaopeidou.com>
ENV	JAVA_VERSION_MAJOR=8 \
    	JAVA_VERSION_MINOR=91 \
    	JAVA_PACKAGE=jdk \
    	JAVA_HOME=/opt/jdk \
   	 PATH=${PATH}:/opt/jdk/bin 
COPY glibc-2.28-r0.apk /opt/
COPY jdk /opt/jdk
RUN	apk upgrade --update && \
   	 apk add --update libstdc++ ca-certificates bash && \
    	apk add --allow-untrusted /opt/*.apk && \
    	rm -v /opt/*.apk
#   	ln -s /opt/jdk1.7.0_76 /opt/jdk

	
	#	rm -v /opt/*.apk && \
#   	ln -s /opt/jdk1.7.0_76 /opt/jdk 


# install tomcat8.5.35
ENV	TOMCAT_HOME=/opt/tomcat \
    	CATALINA_HOME=/opt/tomcat \
#    	CATALINA_OUT=/dev/null \
	CATALINA_OPTS="-Xms1024m -Xmx2048m -Xmn768m -Xss2m -XX:NewSize=512M -XX:MaxNewSize=512m  -XX:PermSize=512M -XX:MaxPermSize=1024m -XX:-UseSplitVerifier -Duser.timezone=GMT+08"
COPY tomcat /opt/tomcat
#COPY logging.properties ${TOMCAT_HOME}/conf/logging.properties
#COPY server.xml ${TOMCAT_HOME}/conf/server.xml
ENV PATH /opt/tomcat/bin
CMD ["catalina.sh", "run"]
VOLUME ["/logs"]
EXPOSE 8080
#END
