FROM ubuntu:18.04
RUN apt-get update && apt-get -y install git make gcc perl-base qemu-system-i386 && apt-get clean
#git clone https://github.com/uva-reiss-cs4414/xv6.git
ADD run.sh .
ENTRYPOINT ["/run.sh"]
