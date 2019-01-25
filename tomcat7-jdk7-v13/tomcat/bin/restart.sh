#!/bin/bash

## java env
export JAVA_HOME=/usr/local/jdk1.8.0_181
export JRE_HOME=$JAVA_HOME/jre

## restart tomcat
name=manager-tomcat
echo "================ 进程名称： $name ================"
ps -ef | grep $name |grep -v grep| awk '{print $2}'|xargs kill -9


mv /root/web/manager-tomcat/webapps/pd-web-manager.war /root/web/manager-tomcat/webapps/ROOT.war
rm -rf /root/web/manager-tomcat/webapps/ROOT
/root/web/manager-tomcat/bin/startup.sh

echo "================ 启动tomcat完成 =================="
