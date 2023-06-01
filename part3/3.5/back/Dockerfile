FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN test ./...

RUN adduser appuser

USER appuser

CMD ["./server"]