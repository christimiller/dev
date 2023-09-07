FROM ubuntu:22.04 as base
ENV DEBIAN_FRONTEND=noninteractive

# General updates
RUN apt-get update --fix-missing

# General tools
RUN apt-get install -y curl tar wget tmux vim tree watch git unzip gawk openssl pkg-config libudev-dev

# C++ development (GNU)
RUN apt-get install -y software-properties-common build-essential gcc g++ make cmake ninja-build

# C++ development (Clang)
RUN apt-get install -y clang-format clang-tidy clang-tools clang libc++-dev \
    libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 \
    libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm

# Arduino AVR
RUN apt-get install -y gcc-avr avr-libc avrdude

# Python development
RUN apt-get install -y python3 python3-pip python3-venv

# Graphviz for Python
RUN apt-get install -y graphviz

# Node & NPM
RUN apt-get install -y nodejs npm

# Update Node.js
RUN npm install -g n
RUN n stable

# Install PNPM
RUN npm install -g pnpm

# Install Go
RUN curl -OL https://golang.org/dl/go1.18.linux-arm64.tar.gz; mkdir /etc/golang; tar -xvzf go1.18.linux-arm64.tar.gz -C /etc/golang; ln -s /etc/golang/go/bin/go /usr/bin/go; rm -f go1.18.linux-arm64.tar.gz

# Install TinyGo
RUN curl -OL https://github.com/tinygo-org/tinygo/releases/download/v0.25.0/tinygo_0.25.0_arm64.deb; dpkg -i tinygo_0.25.0_arm64.deb

