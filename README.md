# ipython_notebook
Docker container with ipython and dropbox. This image is quite useful for me to do my machine learning study and kaggle challenge.

This is the repository for docker image [python_notebook](https://hub.docker.com/r/ivanchaz/python_notebook/). It's an ubuntu image with 
these packages installed :
- ca-certificates
- pkg-config
- build-essential
- gfortran
- libopenblas-dev 
- liblapack-dev
- libpng12-dev 
- libfreetype6-dev
- python3 
- python3-dev 
- python3-pip

And also, these python packages will be installed :
- jupyter 
- matplotlib 
- scipy
- numpy
- sklearn 
- panda

# How To Use
1. install [docker](https://www.docker.com)
2. run command `docker pull ivanchaz/ipython_notebook`
3. run command `docker run -dp {hostPort}:{containerPort} ivanchaz/ipython_notebook`

# Note
1. on windows environment. ensure that the port is forwarded from docker machine to the host
2. check the image logs by using command `docker logs {containerId}` to see the dropbox login URL (for now).

### TODO
1. create a script to automatically login to dropbox account
