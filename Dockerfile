FROM alpine:latest

ARG SECRET_KEY
ENV SECRET_KEY=$SECRET_KEY

VOLUME /repo
WORKDIR /repo

RUN apk add --update --no-cache bash git git-crypt jq
COPY pipe.sh /

ENTRYPOINT ["/pipe.sh"]