FROM alpine:3

RUN mkdir hello
#tidak bisa menggunakan URL hanya copy saja
COPY text/world.txt hello   
COPY text/*.txt hello

CMD cat "hello/world.txt"