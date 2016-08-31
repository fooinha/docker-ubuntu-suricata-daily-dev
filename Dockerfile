FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y -s ppa:oisf/suricata-daily
RUN apt-get update

USER root
RUN apt-get -y install \
    git-core \
    build-essential \
    make \
    valgrind \
    autoconf \
    automake \
    dh-autoreconf \
    libtool \
    libpcap-dev \
    libnet1-dev \
    libyaml-0-2 \
    libyaml-dev \
    zlib1g \
    zlib1g-dev \
    libcap-ng-dev \
    libcap-ng0 \
    libpcre3 \
    libpcre3-dbg \
    libpcre3-dev \
    libmagic-dev \
    libnetfilter-queue-dev \
    libnetfilter-queue1 \
    libnfnetlink-dev \
    libnfnetlink0 \
    libjansson-dev \
    libnss3-dev \
    libnspr4-dev \
    libgeoip1 \
    libgeoip-dev \ 
    libluajit-5.1-common \
    libluajit-5.1-dev \
    python \
    wget \
    jq \
    vim \
    tcpdump \
    ngrep \
    bind9-host
RUN cd /root && apt-get -y source suricata
 
