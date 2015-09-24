# Base Image
FROM ${baseImage}

# Maintainer
MAINTAINER Shailendra Singh <shailendra_01@outlook.com>

ENV JAVA_HOME /usr/local/java
RUN mkdir -p "$JAVA_HOME"
WORKDIR $JAVA_HOME

ENV JAVA_DOWNLOAD_URL http://192.168.1.22:3000/downloads/jdk-8u60-linux-x64.tar.gz
ENV LOCAL_FILE jdk.tar.gz

RUN wget "$JAVA_DOWNLOAD_URL" -O $LOCAL_FILE  \
    && tar -xvf $LOCAL_FILE --strip-components=1 \
    && rm $LOCAL_FILE

