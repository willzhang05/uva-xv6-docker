FROM alpine:latest
RUN apk add git make gcc libc-dev perl qemu-system-i386
ADD run.sh /
ENTRYPOINT ["/run.sh"]
