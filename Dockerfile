FROM ubuntu:24.04

WORKDIR /src

RUN \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  apt-get update \
  && apt-get install -y \
    build-essential \
    autoconf \
    python3 \
    uuid-dev \
    iasl \
    gawk \
    git \
    gcc \
    nasm \
    bison \
    flex \
    texinfo \
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev \
    gcc-arm-linux-gnueabi \
    gcc-aarch64-linux-gnu \
    gcc-riscv64-unknown-elf \
  && ln -sf /usr/bin/python3 /usr/bin/python

# Manually build and install binutils 2.43 for loongson (loongarch64)
RUN git clone https://sourceware.org/git/binutils-gdb.git \
    --branch=binutils-2_43-branch \
    --depth 1 \
  && mkdir -p binutils-gdb/build \
  && cd binutils-gdb/build \
  && ../configure \
    --target=loongarch64-linux-gnu \
    --with-sysroot \
    --disable-nls \
    --disable-werror \
  && make -j$(nproc) \
  && make install \
  && cd ../../ \
  && rm -rf binutils-gdb

# Manually build and install a latest gcc for loongson (loongarch64)
# FIXME: Specify commit hash for consistency
RUN git clone git://gcc.gnu.org/git/gcc.git \
    --branch=master \
    --depth 1 \
  && mkdir -p gcc/build \
  && cd gcc/build \
  && ../configure \
    --target=loongarch64-linux-gnu \
    --disable-nls \
    --enable-languages=c \
    --without-headers \
  && make all-gcc -j$(nproc) \
  && make install-gcc \
  && cd ../../ \
  && rm -rf gcc

RUN mkdir -p ~/.ssh \
  && touch ~/.ssh/known_hosts \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts
