FROM ubuntu:18.04
RUN apt-get update && apt-get -y install bash git make gcc libc-dev perl-base qemu-system-i386
RUN git clone https://github.com/uva-reiss-cs4414/xv6.git
WORKDIR /xv6
ADD run.sh .
ENTRYPOINT ["/xv6/run.sh"]
