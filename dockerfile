FROM debian:stable-slim
RUN apt update
RUN apt-get install -y wget tar
RUN wget https://github.com/hnrq/felicoin/archive/master.tar.gz
RUN mkdir /felicoin && tar -xvzf master.tar.gz -C /felicoin
RUn mkdir -p /root/.felicoin
RUN cp /felicoin/felicoin-master/felicoin.conf /root/.felicoin/felicoin.conf
WORKDIR /felicoin
#shared libraries and dependencies
RUN apt-get install -y g++ make autoconf libtool patch
RUN ./installbdb.sh .
RUN apt-get install -y libtool autotools-dev automake \
	pkg-config libssl-dev libevent-dev bsdmainutils libboost-system-dev \
	libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev \
	libboost-test-dev libboost-thread-dev software-properties-common \
	libminiupnpc-dev libzmq3-dev 
#build felicoin source
RUN ./autogen.sh
RUN ./configure  BDB_LIBS="-L$./lib -ldb_cxx-4.8" BDB_CFLAGS="-I./include"
RUN make
RUN make install
#open service port
EXPOSE 13371 19666
CMD ["felicoind", "--printtoconsole"]

