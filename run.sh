#!/bin/sh

if [ -d "/xv6" ]; then
    cd /xv6
    /usr/bin/make qemu-nox
else
    echo "Please make sure to run with the bind mount to your copy of the xv6 source."
    /bin/sh
fi
        
