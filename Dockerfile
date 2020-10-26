FROM ubuntu:18.04

RUN apt update \
  && apt install -y \
    default-jre \
    wget \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/nickbattle/vdmj/releases/download/4.3.0-1/vdmj-4.3.0-201023.jar \
  && mv vdmj-4.3.0-201023.jar /usr/local/bin/vdmj.jar

COPY scripts/ /usr/local/bin

WORKDIR /workspace