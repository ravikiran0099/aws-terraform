#!/bin/bash
yum update -y
wget https://download.java.net/java/17/latest/jdk-17_linux-x64_bin.tar.gz
sudo tar -xzf jdk-17_linux-x64_bin.tar.gz -C /opt/
sudo vi /etc/profile.d/java.sh
export JAVA_HOME=/opt/jdk-17
export PATH=$PATH:$JAVA_HOME/bin
sudo chmod +x /etc/profile.d/java.sh
source /etc/profile.d/java.sh
cd /home/ec2-user
sudo wget https://spring-app-terra.s3.amazonaws.com/spring-app-0.0.1-SNAPSHOT.jar
sudo java -jar spring-app-0.0.1-SNAPSHOT.jar

