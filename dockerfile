FROM debian:stable-slim
RUN apt update
RUN apt-get install -y wget
RUN wget https://github.com/hnrq/felicoin/archive/master.tar.gz
RUN tar -xzf *.tar.gz
RUN mv /felicoin-master /felicoin
WORKDIR /felicoin
#shared libraries and dependencies
RUN apt-get install -y g++ make autoconf libtool patch
RUN ./contrib/install_db4.sh .
RUN apt-get install -y libtool autotools-dev automake \
	pkg-config libssl-dev libevent-dev bsdmainutils libboost-system-dev \
	libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev \
	libboost-test-dev libboost-thread-dev software-properties-common \
	libminiupnpc-dev libzmq3-dev libdb++-dev && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#build felicoin source
RUN ./autogen.sh
RUN ./configure  BDB_LIBS="-L/felicoin/db4/lib -ldb_cxx-4.8" BDB_CFLAGS="-I/felicoin/db4/include" \
    --mandir=/usr/share/man \
    --disable-tests \
    --disable-bench \
    --disable-ccache \
    --with-gui=no \
    --with-utils \
    --with-libs \
    --with-daemon
RUN make -j4
RUN make install
#open service port
EXPOSE 13371 19666
CMD ["felicoind", "--printtoconsole"]

