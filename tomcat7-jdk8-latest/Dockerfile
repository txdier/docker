FROM alpine:latest
MAINTAINER Anastas Dancha <qiao.li@xiaopeidou.com>
ENV	JAVA_VERSION_MAJOR=8 \
    	JAVA_VERSION_MINOR=191 \
    	JAVA_PACKAGE=jdk \
    	JAVA_HOME=/opt/jdk \
		PATH=/opt/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/tomcat/bin
COPY glibc-2.28-r0.apk /opt/
COPY jdk /opt/jdk
RUN	apk upgrade --update && \
   	 apk add --update libstdc++ ca-certificates gcc bash && \
    	apk add --allow-untrusted /opt/*.apk && \
    	rm -v /opt/*.apk
#CMD ["java", "-version"]
# install tomcat8.5.35
ENV	TOMCAT_HOME=/opt/tomcat \
    CATALINA_HOME=/opt/tomcat \
	CATALINA_OPTS="-Xms1024m -Xmx2048m -Xmn768m -Xss2m -XX:NewSize=512M -XX:MaxNewSize=512m  -XX:PermSize=512M -XX:MaxPermSize=1024m -XX:-UseSplitVerifier -Duser.timezone=GMT+08"
COPY tomcat /opt/tomcat
RUN chmod -R +x /opt/tomcat/bin/ /opt/jdk/bin/
CMD ["catalina.sh", "run"]
VOLUME ["/logs"]
EXPOSE 8080
#END
