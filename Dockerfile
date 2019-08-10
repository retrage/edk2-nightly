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
  && apt-get clean \
  && ln -sf /usr/bin/python3.7 /usr/bin/python
