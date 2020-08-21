FROM fluentd:v1.9.1-1.0
RUN \
    apk add --update --no-cache build-base ruby-dev && \
    gem install fluent-plugin-s3 && \
    apk del build-base ruby-dev