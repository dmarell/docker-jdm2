FROM dockerfile/ubuntu-desktop

MAINTAINER Daniel Marell "daniel@marell.se"

ADD vncserver.sh /data/vncserver.sh
ADD run-idea.sh /root/Desktop/run-idea.sh

VOLUME /work

RUN \
  apt-get update && \
  apt-get -qy install language-pack-sv && \
  apt-get -qy install git && \
  apt-get -qy install maven && \
  wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh \
  wget download-cf.jetbrains.com/idea/ideaIC-14.tar.gz && \
  tar -xvf ideaIC-14.tar.gz

ENV USER root

CMD bash
