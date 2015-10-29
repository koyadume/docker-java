# Base Image
FROM koyadume/docker-linux-tools:dockerhub-1.0

# Maintainer
MAINTAINER Shailendra Singh <shailendra_01@outlook.com>

ENV JAVA_HOME /usr/local/java
RUN mkdir -p "$JAVA_HOME"
WORKDIR $JAVA_HOME

ENV JAVA_DOWNLOAD_URL "http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz"
ENV LOCAL_FILE jdk.tar.gz

RUN wget --no-cookies --no-check-certificate \
	--header "Cookie:oraclelicense=accept-securebackup-cookie" "$JAVA_DOWNLOAD_URL" -O $LOCAL_FILE  \
    && tar -xf $LOCAL_FILE --strip-components=1 \
    && rm $LOCAL_FILE

