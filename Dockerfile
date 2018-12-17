FROM centos:7

LABEL authors="Carles Amigó"
LABEL maintainer="rtv-systems@rakuten.com"

ENV AGENT_VERSION="1.1.3-1"
ENV LOG_LEVEL="INFO"

RUN yum -y update && \
    yum -y install https://s3.amazonaws.com/streaming-data-agent/aws-kinesis-agent-${AGENT_VERSION}.amzn1.noarch.rpm

CMD /usr/bin/start-aws-kinesis-agent -L $LOG_LEVEL -l /dev/stdout
