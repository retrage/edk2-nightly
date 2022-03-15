FROM ubuntu:latest

WORKDIR /src

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    autoconf \
    python3 \
    uuid-dev \
    iasl \
    git \
    gcc \
    python3-distutils \
    gcc-arm-linux-gnueabi \
    gcc-aarch64-linux-gnu \
    gcc-riscv64-unknown-elf \
  && apt-get clean \
  && ln -sf /usr/bin/python3 /usr/bin/python

# Build and install nasm 2.15.05 manually
RUN git clone https://github.com/netwide-assembler/nasm.git \
    --branch nasm-2.15.05 \
    --depth 1 \
  && cd nasm \
  && ./autogen.sh \
  && ./configure \
  && make \
  && make install || true \
  && cd .. \
  && rm -rf nasm

RUN mkdir -p ~/.ssh \
  && touch ~/.ssh/known_hosts \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts
