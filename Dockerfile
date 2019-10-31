FROM ubuntu:18.04
MAINTAINER Smart Insider <smartyinsider@gmail.com>


#Win64/Win32 cross compilation
RUN apt-get update && \
    apt-get upgrade --yes && \
    apt-get install --yes apt-utils build-essential libtool autotools-dev automake 
pkg-config bsdmainutils curl git \
       g++-mingw-w64-x86-64 g++-mingw-w64-i686 mingw-w64-i686-dev && \
    update-alternatives --config x86_64-w64-mingw32-g++ && \
    update-alternatives --config i686-w64-mingw32-g++

#Common linux dependencies:
RUN apt-get install --yes make cmake curl g++-multilib libtool binutils-gold python3

#macOS cross compilation
RUN apt-get install --yes curl librsvg2-bin libtiff-tools cmake imagemagick libcap-dev 
libz-dev libbz2-dev python-setuptools

#LINUX cross compilation
RUN apt-get install --yes g++-arm-linux-gnueabihf binutils-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf binutils-arm-linux-gnueabihf \
    g++-aarch64-linux-gnu binutils-aarch64-linux-gnu \
    g++-riscv64-linux-gnu binutils-riscv64-linux-gnu

#DEPENDS
WORKDIR /home/generator18
RUN apt-get install --yes nano rsync htop
RUN apt-get update && apt-get install --yes \
	build-essential libtool autotools-dev autoconf  libssl1.0-dev libboost-all-dev \
	software-properties-common && \
    add-apt-repository --yes ppa:bitcoin/bitcoin && \
    apt-get update
    
RUN apt-get install --yes libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libqt4-dev 
libprotobuf-dev protobuf-compiler \
    libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libqrencode-dev curl 
g++-mingw-w64-i686 mingw-w64-i686-dev \
    g++-mingw-w64-x86-64 mingw-w64-x86-64-dev g++-arm-linux-gnueabihf g++-aarch64-linux-gnu 
libzmq3-dev \
    libqrencode-dev bsdmainutils libncurses5-dev libc6-armel-cross libc6-dev-armel-cross \
    libevent-dev cmake gawk python-dev htop gettext lcov yasm ccache default-jre default-jdk 
pkgconf vim \
    librsvg2-bin libtiff-tools imagemagick libcap-dev libbz2-dev python-setuptools clang 
wget nsis binutils-arm-linux-gnueabihf libjpeg-dev dos2unix \
    libgmp-dev 
