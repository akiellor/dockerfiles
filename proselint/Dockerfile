FROM alpine

RUN apk add --update python py-pip
RUN pip install --upgrade pip
RUN pip install proselint

VOLUME /data

ENTRYPOINT ["/usr/bin/proselint"]

CMD ["-h"]
