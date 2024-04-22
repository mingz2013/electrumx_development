FROM python:latest
LABEL authors="mingz"

RUN apt update &&\
    apt list --upgradable -a &&\
    apt upgrade -y

RUN apt install librocksdb-dev libsnappy-dev libbz2-dev libz-dev liblz4-dev -y

WORKDIR /build
RUN git clone https://github.com/spesmilo/electrumx.git
RUN cd electrumx && pip3 install .[rocksdb,ujson]


ENTRYPOINT ["electrumx_server"]


