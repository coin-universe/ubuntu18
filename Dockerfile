FROM ubuntu:18.04
MAINTAINER Smart Insider <smartyinsider@gmail.com>



#BASIC DEPENDS
RUN apt-get update && apt-get install --yes build-essential libtool autotools-dev autoconf  libssl1.0-dev libboost-all-dev software-properties-common && add-apt-repository --yes ppa:bitcoin/bitcoin && apt-get update

#Common linux dependencies:
RUN apt-get install --yes make g++-multilib libtool binutils-gold python3 libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libqt4-dev libtiff-tools libz-dev nano rsync \
	libprotobuf-dev protobuf-compiler libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libqrencode-dev g++-mingw-w64-i686 mingw-w64-i686-dev curl git  \
	g++-mingw-w64-x86-64 mingw-w64-x86-64-dev g++-arm-linux-gnueabihf g++-aarch64-linux-gnu libzmq3-dev libqrencode-dev bsdmainutils libncurses5-dev libc6-armel-cross libc6-dev-armel-cross \
	libevent-dev gawk python-dev htop gettext lcov yasm ccache default-jre default-jdk pkgconf vim cmake librsvg2-bin imagemagick libcap-dev libbz2-dev python-setuptools clang wget nsis binutils-arm-linux-gnueabihf libjpeg-dev dos2unix libgmp-dev 
	
#Win64/Win32 cross compilation
RUN apt-get install --yes apt-utils build-essential libtool autotools-dev automake pkg-config bsdmainutils \
    g++-mingw-w64-x86-64 g++-mingw-w64-i686 mingw-w64-i686-dev && update-alternatives --config x86_64-w64-mingw32-g++ && update-alternatives --config i686-w64-mingw32-g++

#macOS cross compilation
RUN apt-get install --yes 
	
WORKDIR /home/generator18
	