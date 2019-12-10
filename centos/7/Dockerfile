
FROM centos:centos7
MAINTAINER Hiroki Shirokura <slankdev@gmail.com>

RUN dnf install -y git autoconf automake libtool make \
  readline-devel texinfo net-snmp-devel groff pkgconfig json-c-devel \
  pam-devel python3-pytest bison flex c-ares-devel python3-devel \
  python3-sphinx perl-core patch systemd-devel libcap-devel \
	sudo iproute traceroute iputils bash-completion tcpdump \
	wireshark-cli gdb wget vim libunwind libunwind-devel \
	iptables-services

ADD ./enable_seg6_router.py /usr/bin/enable_seg6_router.py
ADD ./disable_seg6_router.py /usr/bin/disable_seg6_router.py
RUN chmod +x /usr/bin/enable_seg6_router.py
RUN chmod +x /usr/bin/disable_seg6_router.py
