FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build && \
    adduser -S appuser && \
    chown appuser .

USER appuser

CMD ["./server"]