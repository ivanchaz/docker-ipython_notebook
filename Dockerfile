FROM debian:jessie

MAINTAINER ivan.chaz@gmail.com

# install python and jupyter
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		ca-certificates wget build-essential \ 
                python3 python3-dev python3-pip \
	&& rm -rf /var/lib/apt/lists/*

RUN pip3 install jupyter

# install drop box client

RUN apt-get remove -y build-essential \
                   wget

EXPOSE 8888
CMD ["jupyter","notebook"]
