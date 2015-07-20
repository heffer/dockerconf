FROM ubuntu:latest
MAINTAINER Sven Reul <sven@heffer.de>
RUN apt-get -y update && \
  apt-get -y install software-properties-common mc htop vim curl && \
  apt-get -y dist-upgrade && \
  apt-get clean && \
  rm -rf /var/cache/apt/lists/* /tmp/* /var/tmp/*
CMD ["bash"]
