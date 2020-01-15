#!/bin/sh

if [ -f "/xv6/Makefile" ]; then
    cd /xv6
    /usr/bin/make qemu-nox
else
    echo "Please make sure to run with the bind mount to your copy of the xv6 source."
fi
