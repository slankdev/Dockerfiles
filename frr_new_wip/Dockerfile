
FROM slankdev/ubuntu:18.04
MAINTAINER Hiroki Shirokura <slankdev@nttv6.jp>

ADD https://github.com/FRRouting/frr/releases/download/frr-6.0/frr-doc_6.0-1.ubuntu18.04+1_all.deb /tmp/frr_doc.deb
ADD https://github.com/FRRouting/frr/releases/download/frr-6.0/frr_6.0-1.ubuntu18.04+1_amd64.deb /tmp/frr.deb

# (base=slankdev/ubuntu18:04) basic package install
RUN apt update \
 && apt install -y iproute2 libatm1 libc-ares2 libelf1 \
	    libmnl0 libpopt0 libxtables12 logrotate libjson-c3 \
 && dpkg -i /tmp/frr.deb \
 && dpkg -i /tmp/frr_doc.deb

