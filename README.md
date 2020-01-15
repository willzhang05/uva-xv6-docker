# uva-xv6-docker
Docker container for running the UVA distribution of xv6

## Using this Docker image
* Clone the [git repository](https://github.com/uva-reiss-cs4414/xv6)
* `cd` into the xv6 source code directory
* Download the image: `docker pull thewiz/xv6:latest`
* Run the docker container: ```docker run -it -v `pwd`:/xv6 thewiz/xv6:latest```
