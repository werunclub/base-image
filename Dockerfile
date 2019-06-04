FROM alpine:3.9

RUN apk update \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && echo "Asia/Tokyo" > /etc/timezone \
    && rm -rf /var/cache/apk/*

RUN apk update && \
    apk add --no-cache curl ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*
