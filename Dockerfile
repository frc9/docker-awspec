FROM ruby:2.5.1-alpine3.7

ARG VERSION

RUN mkdir -p /opt/awspec

WORKDIR /opt/awspec

RUN gem install awspec -v $VERSION
RUN gem install rake

RUN mkdir -p /data
WORKDIR /data

RUN mkdir -p /root/.aws
VOLUME /root/.aws

CMD ["awspec"]
