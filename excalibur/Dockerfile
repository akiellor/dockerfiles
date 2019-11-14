FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=US/Pacific

RUN apt-get update -y && apt install -y libsm6 python python-pip python-tk ghostscript

RUN pip install camelot-py[cv]

CMD [ "bash" ]
