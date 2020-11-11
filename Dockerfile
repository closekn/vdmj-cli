FROM alpine:3.10

ARG VDMJ_VERSION="4.3.0"
ARG VDMJ_TAG="${VDMJ_VERSION}-1"
ARG UPDATE_DAY="201023"

RUN apk update \
  && apk --no-cache add \
    openjdk11-jre-headless \
  && rm -rf /var/cache/apk/* \
  && wget https://github.com/nickbattle/vdmj/releases/download/${VDMJ_TAG}/vdmj-${VDMJ_VERSION}-${UPDATE_DAY}.jar \
  && mv vdmj-${VDMJ_VERSION}-${UPDATE_DAY}.jar /usr/local/bin/vdmj.jar

COPY scripts/ /usr/local/bin

WORKDIR /workspace