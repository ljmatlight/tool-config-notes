#!/bin/sh

#设置Tomcat 容器路径
tomcatpath=/opt/app/tomcat-x-project-admin
projectname=x-project-admin
docbase=x-project-admin
echo $tomcatpath

#设置工程路径
projectpath=/opt/project/$projectname/$projectname/
echo $projectpath
warpath=$projectpath/target/x-project-admin.war
echo $warpath

echo "==============================deploy begin=============================="
cd /opt/project/$projectname/$projectname
echo "##############################update git##############################"
git pull
echo "###########################mvn clean###################################"
cd $projectpath
mvn clean package -P beta
echo "#########################stop tomcat################################"
ps -ef | grep "tomcat-x-cebbank-admin" | grep -v grep | awk '{print $2}' | xargs kill -9
#$tomcatpath/bin/shutdown.sh
sleep 10
echo "##########################delete web dir#############################"
rm -rf $tomcatpath/work/*
rm -rf $tomcatpath/webapps/$docbase
mkdir $tomcatpath/webapps/$docbase
echo "##########################unzip to webapps############################"
unzip -o $warpath -d $tomcatpath/webapps/$docbase
echo "############################start tomcat#############################"
$tomcatpath/bin/startup.sh
sleep 1
echo "==============================deploy over=============================="
tail -f $tomcatpath/logs/catalina.out