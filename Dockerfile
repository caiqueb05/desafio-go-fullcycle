FROM golang

WORKDIR /home

RUN  mkdir hello && cd hello \
    && go mod init hello

COPY hello.go /home/hello

CMD cd /home/hello && go run hello.go