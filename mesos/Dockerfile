FROM heffer/scala:latest
ENV VERSION 0.22.1
RUN \
  apt-get -y update && \
  apt-get -y install build-essential python-dev python-boto libcurl4-nss-dev libsasl2-dev maven libapr1-dev libsvn-dev && \
  apt-get clean && \
  rm -rf /var/cache/apt/lists/* && \
  wget -O mesos.tgz http://www.apache.org/dist/mesos/${VERSION}/mesos-${VERSION}.tar.gz && \
  tar -zxf mesos.tgz && \
  cd mesos-${VERSION} && \
  mkdir build && \
  cd build && \
  ../configure && \
  make -j 2 V=0 && \
  make install && \
  ldconfig && \
  rm -rf /data/*
WORKDIR /data
EXPOSE 5050
ENTRYPOINT ["mesos"]
