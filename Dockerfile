FROM golang:1.20 AS builder
COPY . /demo

WORKDIR /demo

RUN CGO_ENABLED=0 GOOS=linux go build -o bin/app -ldflags '-s -w' ./cmd/main.go

ENTRYPOINT ["/demo/bin/app"]
