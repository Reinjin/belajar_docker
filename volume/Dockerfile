FROM golang:1.18-alpine

#bisa diberikan nilai default tetapi bisa di override
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA} 
#penambahan volume bisa saja seperti berikut "/logs"

CMD go run app/main.go 