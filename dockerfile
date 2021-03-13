FROM debian:stable-slim
COPY ./felicoin.conf /root/.felicoin/felicoin.conf
COPY . /felicoin
WORKDIR /felicoin
#shared libraries and dependencies
RUN apt update
RUN apt-get install -y g++ make autoconf libtool wget patch
RUN ./contrib/install_db4.sh .
RUN apt-get install -y libtool autotools-dev automake \
	pkg-config libssl-dev libevent-dev bsdmainutils libboost-system-dev \
	libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev \
	libboost-test-dev libboost-thread-dev software-properties-common \
	libminiupnpc-dev libzmq3-dev libdb++-dev 
#build felicoin source
RUN ./autogen.sh
RUN ./configure  BDB_LIBS="-L/felicoin/db4/lib -ldb_cxx-4.8" BDB_CFLAGS="-I/felicoin/db4/include" 
RUN make
RUN make install
#open service port
EXPOSE 13371 19666
CMD ["felicoind", "--printtoconsole"]

