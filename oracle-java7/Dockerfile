FROM heffer/ubuntu:latest
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/oracle-jdk7-installer
WORKDIR /data
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
CMD ["bash"]
