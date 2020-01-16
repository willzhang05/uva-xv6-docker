# uva-xv6-docker
Docker container for running the [UVA distribution of xv6](https://github.com/uva-reiss-cs4414/xv6)

## Using this Docker image
* Download the image: `docker pull thewiz/xv6:latest`
* Run the docker container in your xv6 source working directory: ```docker run -it -v `pwd`:/xv6 thewiz/xv6:latest```
