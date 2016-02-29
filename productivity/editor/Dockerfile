FROM alpine

RUN apk --update add vim the_silver_searcher

RUN adduser -S vim
USER vim

ADD .vim /home/vim/.vim
ADD .vimrc /home/vim/.vimrc

VOLUME /data
WORKDIR /data

CMD /bin/sh
