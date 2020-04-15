FROM alpine:edge

RUN echo "ipv6" >> /etc/modules

RUN apk update && apk upgrade

RUN apk update
RUN apk add --no-cache clang clang-dev clang-libs clang-static alpine-sdk dpkg
RUN apk add --update --no-cache cmake
RUN apk add --update --no-cache ccache

RUN mkdir /projectDir

RUN clang --version

WORKDIR /projectDir
