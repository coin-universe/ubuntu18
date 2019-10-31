FROM ubuntu:18.04
MAINTAINER Smart Insider <smartyinsider@gmail.com>


#BASIC DEPENDS
RUN apt-get update && apt-get install --yes build-essential autotools-dev autoconf software-properties-common && add-apt-repository --yes ppa:bitcoin/bitcoin && apt-get update
RUN apt-get install --yes make libtool python3 libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libqt4-dev libtiff-tools libz-dev nano rsync \
	libprotobuf-dev protobuf-compiler libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools curl git binutils-gold gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf \
	g++-mingw-w64-x86-64 mingw-w64-x86-64-dev g++-mingw-w64-i686 mingw-w64-i686-dev g++-arm-linux-gnueabihf g++-aarch64-linux-gnu binutils-arm-linux-gnueabihf \
	libzmq3-dev libqrencode-dev bsdmainutils libncurses5-dev libc6-armel-cross libc6-dev-armel-cross \
	libevent-dev gawk python-dev htop gettext lcov yasm ccache default-jre default-jdk vim cmake librsvg2-bin imagemagick libcap-dev libbz2-dev python-setuptools clang wget nsis libjpeg-dev dos2unix libgmp-dev \
	libboost-all-dev apt-utils automake pkg-config libssl1.0-dev \
	g++-7-aarch64-linux-gnu g++-7-arm-linux-gnueabihf \
	gcc-7-aarch64-linux-gnu gcc-7-arm-linux-gnueabihf \	
    && update-alternatives --config x86_64-w64-mingw32-g++ \
	&& update-alternatives --config i686-w64-mingw32-g++
	
WORKDIR /home/generator18
