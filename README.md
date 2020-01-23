# uva-xv6-docker
Docker container for running the [UVA distribution of xv6](https://github.com/uva-reiss-cs4414/xv6)

## Using this Docker image
* Download and run `launch.sh` either in the xv6 source working directory, or pass a command-line argument with a path to the xv6 source.
* To generate an archive for submission, run `launch.sh submit <path-to-xv6-source>`.
### Manually
* Download the image: `docker pull thewiz/xv6:latest`
* Run the docker container in your xv6 source working directory: ```docker run -it -v `pwd`:/xv6 thewiz/xv6:latest```
