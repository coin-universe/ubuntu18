FROM ubuntu:18.04
MAINTAINER Smart Insider <smartyinsider@gmail.com>

#RUN apt-get install --yes make libtool python3 libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libqt4-dev libtiff-tools libz-dev nano rsync \
#	libprotobuf-dev protobuf-compiler libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools curl git binutils-gold gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf \
#	g++-mingw-w64-x86-64 mingw-w64-x86-64-dev g++-mingw-w64-i686 mingw-w64-i686-dev g++-arm-linux-gnueabihf g++-aarch64-linux-gnu binutils-arm-linux-gnueabihf \
#	libzmq3-dev libqrencode-dev bsdmainutils libncurses5-dev libc6-armel-cross libc6-dev-armel-cross \
#	libevent-dev gawk python-dev htop gettext lcov yasm ccache default-jre default-jdk vim cmake librsvg2-bin imagemagick libcap-dev libbz2-dev python-setuptools clang wget nsis libjpeg-dev dos2unix libgmp-dev \
#	libboost-all-dev apt-utils automake pkg-config libssl1.0-dev colormake \
#	g++-7-aarch64-linux-gnu g++-7-arm-linux-gnueabihf \
#	gcc-7-aarch64-linux-gnu gcc-7-arm-linux-gnueabihf \
#	&& update-alternatives --set x86_64-w64-mingw32-g++ /usr/bin/x86_64-w64-mingw32-g++-posix   \
#	&& update-alternatives --set i686-w64-mingw32-g++ /usr/bin/i686-w64-mingw32-g++-posix
#
#FIXINGS
#RUN apt-get install --yes software-properties-common && add-apt-repository --yes ppa:bitcoin/bitcoin && apt-get update && \
#	apt-get install --yes libdb4.8-dev libdb4.8++-dev
#
#------------------------------------------#
# --enable-cxx --disable-shared --with-pic 
#run-win32.sh
#TESTING NOW :
#run-win64.sh
#------------------------------------------#




RUN apt-get update --yes 
RUN apt-get install --yes software-properties-common
RUN add-apt-repository --yes ppa:bitcoin/bitcoin
RUN apt-get update --yes
RUN apt-get install --yes libdb4.8-dev libdb4.8++-dev


#BASIC DEPENDS
#RUN apt-get update && apt-get install --yes build-essential autotools-dev autoconf software-properties-common && add-apt-repository --yes ppa:bitcoin/bitcoin && apt-get update

RUN apt-get install build-essential autotools-dev autoconf --yes 

RUN apt-get install --yes make automake cmake curl g++-multilib libtool binutils-gold bsdmainutils pkg-config python3
RUN apt-get install --yes g++-arm-linux-gnueabihf binutils-arm-linux-gnueabihf \
	g++-aarch64-linux-gnu binutils-aarch64-linux-gnu \
	g++-riscv64-linux-gnu binutils-riscv64-linux-gnu

	
#RUN apt-get install libssl-dev libgmp-dev libevent-dev libboost-all-dev --yes
RUN apt-get install libssl1.0-dev libgmp-dev libevent-dev libboost-all-dev --yes




RUN apt-get install --yes libzmq3-dev
RUN apt-get install --yes libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
RUN apt-get install --yes libqrencode-dev
RUN apt-get install --yes libminiupnpc-dev 
RUN apt-get install --yes colormake htop nano rsync dos2unix

RUN apt-get install --yes g++-mingw-w64-i686 mingw-w64-i686-dev
RUN update-alternatives --set i686-w64-mingw32-g++ /usr/bin/i686-w64-mingw32-g++-posix

RUN apt-get install --yes g++-mingw-w64-x86-64 mingw-w64-x86-64-dev
RUN update-alternatives --set x86_64-w64-mingw32-g++ /usr/bin/x86_64-w64-mingw32-g++-posix

#MAC OS
RUN apt-get install --yes librsvg2-bin libtiff-tools imagemagick libcap-dev libz-dev libbz2-dev python-setuptools

#Extra
RUN apt-get install git --yes

WORKDIR /home/build


