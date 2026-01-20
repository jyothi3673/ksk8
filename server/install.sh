#!/bin/bash
JDK=https://download.oracle.com/java/17/archive/jdk-17.0.12_linux-x64_bin.tar.gz
MAVEN=https://dlcdn.apache.org/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.tar.gz
JDK_TAR=jdk-17.0.12_linux-x64_bin.tar.gz
MAVEN_TAR=apache-maven-3.9.12-bin.tar.gz

VAL ()
{
    if [ $1 -eq=0 ]; then
        echo " $2... SUCESS"
    else
        echo " $2... SUCESS"
        exit 1
    fi
}
echo "Downloading JDK"
cd /opt
wget $JDK
tar -xvf $JDK_TAR
rm -rf $JDK_TAR
VAL $? "JDK Download"

echo "Downloading MAVEN"
cd /opt
wget $MAVEN
tar -xvf $JDK_TAR
rm -rf $JDK_TAR
VAL $? "JDK Download"

echo "JDK and MAVEN Env set"
export JAVA_HOME=/opt/jdk-17.0.12
export PATH=/opt/jdk-17.0.12/bin:${PATH}
export M2_HOME=/opt/apache-maven-3.9.12
export PATH=/opt/apache-maven-3.9.12/bin:${PATH}