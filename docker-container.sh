#melihat container yang ada
docker container ls -a

#buat container
docker container create --name namacontainer namaimage:tag
docker container create --name contohredis redis:latest
docker container create --name contohredis2 redis:latest

#menjalankan container
docker container start contohredis
docker container start contohredis2

#menghentikan container
docker container stop contohredis
docker container stop contohredis2

#menghapus container
docker container rm contohredis
docker container rm contohredis2

