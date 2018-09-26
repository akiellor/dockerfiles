FROM alpine

RUN apk add --update wget ca-certificates
RUN apk add cmake
RUN apk add gcc
RUN apk add make
RUN apk add build-base
RUN apk add gnutls-dev
RUN apk add libuuid
RUN apk add util-linux-dev
RUN wget https://taskwarrior.org/download/task-2.5.1.tar.gz
RUN tar zxf task-2.5.1.tar.gz
WORKDIR task-2.5.1
RUN cmake -DCMAKE_BUILD_TYPE=release .
RUN make
RUN make install

ADD .taskrc /.taskrc

VOLUME /.task

ENTRYPOINT ["/usr/local/bin/task", "rc:/.taskrc"]
