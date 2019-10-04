FROM arm32v7/ubuntu:18.04
RUN apt-get update &&\
        apt-get install -y \
        git \
        build-essential \
        cmake \
        libuv1-dev \
        libssl-dev \
        libhwloc-dev

RUN git clone https://github.com/xmrig/xmrig.git && \
        cd xmrig && \
        mkdir build && \
        cd build && \
        cmake .. && \
        make
WORKDIR /xmrig/build
ENTRYPOINT ["./xmrig"]
