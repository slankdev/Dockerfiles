

FROM slankdev/ubuntu:16.04
MAINTAINER Hiroki Shirokura <slankdev@nttv6.jp>

# (base=slankdev/ubuntu16:04) basic package install

RUN apt update \
 && apt install -y libnuma-dev numactl linux-headers-`uname -r`

WORKDIR /usr/local/src
RUN git clone git://dpdk.org/dpdk dpdk.git.bra.master \
 && cp -rf dpdk.git.bra.master dpdk.git.tag.v16.11 \
 && cp -rf dpdk.git.bra.master dpdk.git.tag.v17.11 \
 && cp -rf dpdk.git.bra.master dpdk.git.tag.v18.11

WORKDIR /usr/local/src/dpdk.git.tag.v16.11
RUN git checkout -b v16.11 refs/tags/v16.11 \
 && export RTE_SDK=`pwd` \
 && export RTE_TARGET=x86_64-native-linuxapp-gcc \
 && make install T=$RTE_TARGET -j`nproc`

WORKDIR /usr/local/src/dpdk.git.tag.v17.11
RUN git checkout -b v17.11 refs/tags/v17.11 \
 && export RTE_SDK=`pwd` \
 && export RTE_TARGET=x86_64-native-linuxapp-gcc \
 && make install T=$RTE_TARGET -j`nproc`

WORKDIR /usr/local/src/dpdk.git.tag.v18.11
RUN git checkout -b v18.11 refs/tags/v18.11 \
 && export RTE_SDK=`pwd` \
 && export RTE_TARGET=x86_64-native-linuxapp-gcc \
 && make install T=$RTE_TARGET -j`nproc`

WORKDIR /root
