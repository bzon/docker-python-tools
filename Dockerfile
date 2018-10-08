FROM openjdk:alpine

RUN apk -v --update add \
        sudo \
        docker \
        python \
        py-pip \
        && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

