FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

COPY sources.list /etc/apt/sources.list
RUN apt-get update -y && \
    apt-get install libncurses5-dev libssl-dev build-essential \
            openssl zlibc minizip libidn11-dev libidn11 linux-source bc \
            kmod kernel-package 

WORKDIR /opt/mptcp

