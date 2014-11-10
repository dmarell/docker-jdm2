FROM dockerfile/ubuntu-desktop

MAINTAINER Daniel Marell "daniel@marell.se"

ADD vncserver.sh /data/vncserver.sh
ADD run-idea.sh /root/Desktop/run-idea.sh

RUN apt-get update
RUN apt-get -qy install language-pack-sv
RUN apt-get -qy install git
RUN apt-get -qy install maven
RUN wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh
RUN \
  wget download-cf.jetbrains.com/idea/ideaIC-14.tar.gz && \
  tar -xvf ideaIC-14.tar.gz

ENV USER root

VOLUME /work

CMD bash
