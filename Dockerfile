FROM ubuntu:focal

WORKDIR /src

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    python3.8 \
    uuid-dev \
    iasl \
    git \
    gcc \
    nasm \
    python3-distutils \
    gcc-arm-linux-gnueabi \
    gcc-aarch64-linux-gnu \
    gcc-riscv64-unknown-elf \
  && apt-get clean \
  && ln -sf /usr/bin/python3.8 /usr/bin/python

RUN mkdir -p ~/.ssh \
  && touch ~/.ssh/known_hosts \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts
