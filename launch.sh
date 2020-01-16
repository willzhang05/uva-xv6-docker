#!/bin/sh

echo "Pulling latest docker image..."
docker pull thewiz/xv6:latest
if [[ "$#" -eq 0 ]]; then
    if [ -f "Makefile" ]; then
        docker run -it --rm -v `pwd`:/xv6 thewiz/xv6:latest
    else
        echo "Please make sure to run in the directory with the xv6 source."
    fi
else
    if [ -d "$1" ]; then
        XV6_DIR=$(cd $1; pwd)
        if [ -f "$XV6_DIR/Makefile" ]; then
            docker run -it --rm -v "$XV6_DIR":/xv6 thewiz/xv6:latest
        else
            echo "Please make sure to specify the directory with the xv6 source."
        fi
    else
        echo "Specified directory not found."
    fi
fi
