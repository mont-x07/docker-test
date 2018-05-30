FROM alpine:latest

RUN apk add --no-cache gcc musl-dev && \
    apk add --no-cache go && \
    apk add --no-cache git

#RUN wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz
#RUN tar -C /usr/local -xzf go1.10.2.linux-amd64.tar.gz && \
    #chmod +x /usr/local/go/bin/go

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN git clone https://github.com/gothinkster/golang-gin-realworld-example-app.git
WORKDIR golang-gin-realworld-example-app

RUN go get -u github.com/kardianos/govendor
RUN go get -u github.com/pilu/fresh

ENTRYPOINT ["/entrypoint.sh"]
