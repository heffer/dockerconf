FROM heffer/scala
MAINTAINER Sven Reul <sven@heffer.de>
ENV MESOS_VERSION 0.22.1
RUN \
  apt-get -y update && \
  apt-get -y install build-essential python-dev python-boto libcurl4-nss-dev libsasl2-dev maven libapr1-dev libsvn-dev && \
  apt-get clean && \
  wget -O mesos.tgz http://www.apache.org/dist/mesos/${MESOS_VERSION}/mesos-${MESOS_VERSION}.tar.gz && \
  tar -zxf mesos.tgz && \
  cd mesos-${MESOS_VERSION} && \
  mkdir build && \
  cd build && \
  ../configure && \
  make -j 2 V=0 && \
  make install && \
  ldconfig && \
  rm -rf /data/*
WORKDIR /data
EXPOSE 5050
CMD ["bash"]
