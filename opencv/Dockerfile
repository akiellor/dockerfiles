FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get -y install libopencv-dev python-opencv python-matplotlib python-pip
RUN pip install ipython

WORKDIR /data
VOLUME /data

CMD bash
