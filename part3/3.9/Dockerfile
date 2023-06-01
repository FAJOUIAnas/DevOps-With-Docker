FROM golang:alpine AS build-stage

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY . .

RUN go get -d -v && go build && adduser -S appuser && chown appuser .

FROM scratch

EXPOSE 8080

WORKDIR /app

COPY --from=build-stage /app/server /app/server

COPY --from=build-stage /etc/passwd /etc/passwd

USER appuser

CMD ["./server"]