FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S fawwazgroup
RUN adduser -S -D -h /app fawwazuser fawwazgroup
RUN chown -R fawwazuser:fawwazgroup /app

USER fawwazuser

WORKDIR /app

COPY main.go /app   
CMD go run main.go