FROM ubuntu:18.04
RUN apt-get update && apt-get -y install make gcc perl-base qemu-system-i386
ADD run.sh /
ENTRYPOINT ["/run.sh"]
