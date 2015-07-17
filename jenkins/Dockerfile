FROM heffer/oracle-java8
MAINTAINER Sven Reul <sven@heffer.de>
RUN \
  wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
  echo "deb http://pkg.jenkins-ci.org/debian binary/" > /etc/apt/sources.list.d/jenkins.list && \
  apt-get -y update && \
  apt-get -y install jenkins
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
ADD update_jenkins_plugins.sh /usr/local/bin/update_jenkins_plugins.sh
RUN chmod +x /usr/local/bin/update_jenkins_plugins.sh
RUN /usr/local/bin/update_jenkins_plugins.sh
EXPOSE 8080
EXPOSE 50000
CMD ["/usr/local/bin/run.sh"]
