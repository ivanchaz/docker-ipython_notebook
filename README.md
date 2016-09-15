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

# How To Use
1. install [docker](https://www.docker.com)
2. run command `docker pull ivanchaz/python_notebook`

### TODO
1. create a script to automatically login to dropbox account
