FROM alpine:3.10

ARG VERSION="4.3.0"
ARG UPDATE_DAY="201023"

RUN apk update \
  && apk --no-cache add \
    openjdk11-jre-headless \
  && rm -rf /var/cache/apk/* \
  && wget https://github.com/nickbattle/vdmj/releases/download/${VERSION}-1/vdmj-${VERSION}-${UPDATE_DAY}.jar \
  && mv vdmj-${VERSION}-${UPDATE_DAY}.jar /usr/local/bin/vdmj.jar

COPY scripts/ /usr/local/bin

WORKDIR /workspace