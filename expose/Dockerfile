FROM golang:1.18-alpine

RUN mkdir app
COPY main.go app

#default nya adalah 8080/tcp bisa diganti ke udp
EXPOSE 8080

CMD go run app/main.go