FROM heffer/oracle-java8:latest
MAINTAINER Sven Reul <sven@heffer.de>
ENV SCALA_VERSION 2.12.0-M2
ENV SBT_VERSION 0.13.8
RUN \
  wget -O /tmp/scala.deb http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.deb && \
  dpkg -i /tmp/scala.deb && \
  wget -O /tmp/sbt.tgz https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.tgz && \
  cd /opt && \
  tar zxf /tmp/sbt.tgz
ENV PATH $PATH:/opt/sbt/bin
RUN \
  cd /tmp && \
  sbt exit && \
  rm -rf /tmp/*
CMD ["scala"]
