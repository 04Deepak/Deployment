#!/bin/bash
set -e

echo "🚀 Installing OpenJDK 17..."

sudo apt update
sudo apt install -y openjdk-17-jdk

JAVA_PATH=$(readlink -f $(which java) | sed "s:/bin/java::")

echo "export JAVA_HOME=${JAVA_PATH}" >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc

source ~/.bashrc

java -version
echo "✅ Java installed successfully"
