FROM golang:1.18-alpine

#bisa diberikan nilai default tetapi bisa di override
ENV APP_PORT=8080

RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}

CMD go run app/main.go 

