FROM ubuntu:bionic

WORKDIR /src

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    python3.7 \
    uuid-dev \
    iasl \
    git \
    gcc-5 \
    nasm \
    python3-distutils \
    gcc-5-arm-linux-gnueabi \
    gcc-5-aarch64-linux-gnu \
  && apt-get clean \
  && ln -sf /usr/bin/python3.7 /usr/bin/python \
  && ln -sf /usr/bin/arm-linux-gnueabi-gcc-5 /usr/bin/arm-linux-gnueabi-gcc \
  && ln -sf /usr/bin/arm-linux-gnueabi-gcc-ar-5 /usr/bin/arm-linux-gnueabi-gcc-ar \
  && ln -sf /usr/bin/aarch64-linux-gnu-gcc-5 /usr/bin/aarch64-linux-gnu-gcc \
  && ln -sf /usr/bin/aarch64-linux-gnu-gcc-ar-5 /usr/bin/aarch64-linux-gnu-gcc-ar

RUN mkdir -p ~/.ssh \
  && touch ~/.ssh/known_hosts \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts
