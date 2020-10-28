FROM alpine:3.10

RUN apk update \
  && apk --no-cache add \
    openjdk11-jre-headless \
  && rm -rf /var/cache/apk/* \
  && wget https://github.com/nickbattle/vdmj/releases/download/4.3.0-1/vdmj-4.3.0-201023.jar \
  && mv vdmj-4.3.0-201023.jar /usr/local/bin/vdmj.jar

COPY scripts/ /usr/local/bin

WORKDIR /workspace