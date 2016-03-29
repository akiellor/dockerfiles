FROM alpine

RUN apk --update add vim the_silver_searcher git

ADD .vim /root/.vim
ADD .vimrc /root/.vimrc

VOLUME /data
WORKDIR /data

CMD vim
