#!/bin/sh

DOCKER_IMAGE="thewiz/xv6:latest"

echo "Pulling latest docker image..."

docker pull "$DOCKER_IMAGE"
if [ "$#" -eq 0 ]; then
    if [ -f "Makefile" ]; then
        docker run -it --rm -v `pwd`:/xv6 "$DOCKER_IMAGE"
    else
        echo "Please make sure to run in the directory with the xv6 source or specify an argument with the path to the xv6 source."
    fi
else
    if [ "$1" == "submit" ]; then
        if [[ ! -z "$2" &&  -d "$2" ]]; then
            XV6_DIR=$(cd $2; pwd)
            echo "Generating tar file for submission."
            docker run -it --entrypoint=/submit.sh --rm -v "$XV6_DIR":/xv6 "$DOCKER_IMAGE"
            echo "Submission .tar.gz is located in $XV6_DIR."
        else
            echo "Please specify a valid directory with xv6 source."
        fi
    else
        if [ -d "$1" ]; then
            XV6_DIR=$(cd $1; pwd)
            if [ -f "$XV6_DIR/Makefile" ]; then
                docker run -it --rm -v "$XV6_DIR":/xv6 "$DOCKER_IMAGE"
            else
                echo "Please make sure to specify the directory with the xv6 source."
            fi
        else
            echo "Specified directory not found."
        fi
    fi
fi
