FROM alpine:3.8

RUN apk add --update bash gcc musl-dev make zlib-dev ncurses-dev bzip2-dev xz-dev

WORKDIR /app

RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && tar x -f samtools-1.9.tar.bz2

WORKDIR /app/samtools-1.9

RUN make

ADD run.sh /app/run.sh

RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]