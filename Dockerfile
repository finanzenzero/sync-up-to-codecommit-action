FROM alpine:3.19

RUN apk --update --no-cache add git git-lfs aws-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
