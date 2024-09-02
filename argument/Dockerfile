FROM golang:1.18-alpine

ARG app=main

RUN mkdir /app
COPY main.go /app
RUN mv /app/main.go /app/${app}.go

EXPOSE 8080

#tidak bisa karena digunakan saat container berjalan
#CMD go run app/${app}.go

ENV app=${app}
CMD go run /app/${app}.go
