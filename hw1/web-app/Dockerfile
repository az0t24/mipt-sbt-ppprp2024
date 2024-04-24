FROM golang:1.22.0-alpine3.19 AS builder

WORKDIR /hw

COPY go.* ./
COPY main.go main.go

RUN go mod download
RUN go build -o app main.go

FROM alpine:3.19.1

WORKDIR /hw
COPY --from=builder /hw/app /hw/app

ENTRYPOINT ["./app"]