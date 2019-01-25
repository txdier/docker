FROM centos:7
MAINTAINER Anastas Dancha <qiao.li@xiaopeidou.com>
ENV	JAVA_VERSION_MAJOR=8 \
    	JAVA_VERSION_MINOR=191 \
    	JAVA_PACKAGE=jdk \
    	JAVA_HOME=/opt/jdk \
		PATH=/opt/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/tomcat/bin
COPY jdk /opt/jdk
RUN	 yum install -y libstdc++ ca-certificates gcc libgcc glibc
#CMD ["java", "-version"]
# install tomcat8.5.35
ENV	TOMCAT_HOME=/opt/tomcat \
    CATALINA_HOME=/opt/tomcat \
	CATALINA_OPTS="-Xms1024m -Xmx2048m -Xmn768m -Xss2m -XX:NewSize=512M -XX:MaxNewSize=512m  -XX:PermSize=512M -XX:MaxPermSize=1024m -XX:-UseSplitVerifier -Djava.awt.headless=true -Duser.timezone=GMT+08"
COPY tomcat /opt/tomcat
RUN chmod -R +x /opt/tomcat/bin/ /opt/jdk/bin/
CMD ["catalina.sh", "run"]
VOLUME ["/logs"]
EXPOSE 8080
#END
