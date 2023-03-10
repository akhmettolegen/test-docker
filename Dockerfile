FROM golang:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main ./cmd/apiserver
CMD ["/app/main"]