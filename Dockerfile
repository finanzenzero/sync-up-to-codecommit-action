FROM alpine:3

RUN apk --update --no-cache add git git-lfs curl unzip python3 py3-pip \
    && pip3 install --upgrade --break-system-packages pip \
    && pip3 install --no-cache-dir --break-system-packages awscli \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]