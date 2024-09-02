FROM golang:1.18-alpine

WORKDIR /app
COPY main.go /app

EXPOSE 8080
#tidak perlu sebut lagi /app karena sudah di set di WORKDIR
CMD go run main.go
