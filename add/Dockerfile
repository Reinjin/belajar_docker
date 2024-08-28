FROM alpine:3

RUN mkdir hello

#ADD bisa menggunakan URL tetapi jika hanya copy file gunakan COPY
ADD text/world.txt hello
ADD text/*.txt hello

CMD cat "hello/world.txt"