#!/bin/bash
service jenkins start

JENKINS_URL=http://localhost:8080/
cd /tmp
jar xf /usr/share/jenkins/jenkins.war WEB-INF/jenkins-cli.jar
JENKINS_CLI=/tmp/WEB-INF/jenkins-cli.jar

# TODO Find a better way to wait until Jenkins service is up and running
sleep 30

echo "Attempting to update Jenkins plugins..."
J="java -jar $JENKINS_CLI -s $JENKINS_URL"
UPDATE_LIST=$( $J list-plugins | grep -e ')$' | awk '{ print $1 }' )
if [ ! -z "${UPDATE_LIST}" ]; then 
  echo Updating Jenkins Plugins: ${UPDATE_LIST}
  $J install-plugin ${UPDATE_LIST}
fi

service jenkins stop

