FROM debian:jessie

MAINTAINER ivan.chaz@gmail.com

WORKDIR ~

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		ca-certificates wget build-essential \ 
                python3 python3-dev python3-pip \
	&& rm -rf /var/lib/apt/lists/* \
        && pip3 install jupyter \ 
        && jupyter notebook --generate-config \
        # let jupyter to accept all connection
        && sed -i "s/.*c.NotebookApp.ip.*/c.NotebookApp.ip = '*'/" ~/.jupyter/jupyter_notebook_config.py

RUN wget -O dropbox.tar.gz "https://www.dropbox.com/download?plat=lnx.x86_64" \
        && tar -xzf dropbox.tar.gz \
        && rm dropbox.tar.gz 
 
COPY dropbox.py ./


RUN apt-get remove -y build-essential wget ca-certificates

EXPOSE 8888
#CMD ["jupyter","notebook"]
