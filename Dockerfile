# Alpine with openjdk 
FROM alpine:3.7

MAINTAINER Seven Code<mail.sevencode.com>

ENV JAVA_PACKAGE=openjdk
ENV JAVA_VERSION_MAIN=1
ENV JAVA_VERSION_MAJOR=8
ENV JAVA_VERSION="$JAVA_PACKAGE$JAVA_VERSION_MAJOR"
ENV JAVA_HOME="/usr/lib/jvm/java-$JAVA_VERSION_MAIN.$JAVA_VERSION_MAJOR-$JAVA_PACKAGE"

RUN apk update && \
	apk upgrade && \
	apk add "$JAVA_VERSION" && \
	rm -rf /var/cache/apk/*
