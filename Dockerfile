FROM alpine:3.13

RUN apk update \
    && apk add --no-cache tzdata curl ca-certificates \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && echo "Asia/Tokyo" > /etc/timezone \
    && rm -rf /var/cache/apk/*
