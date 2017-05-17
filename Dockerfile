FROM java:8

MAINTAINER Hyun Min Choi <hyunmin.personal@gmail.com>

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential \
    gcc \
    nginx \
    supervisor \
    git \
    vim \
    redis-server
RUN update-ca-certificates -f

ENV SCALA_VERSION 2.12.1
ENV SBT_VERSION 0.13.15

# install sbt
RUN wget https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb
RUN dpkg -i sbt-$SBT_VERSION.deb

# install scala
RUN wget https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.deb
RUN dpkg -i scala-$SCALA_VERSION.deb
