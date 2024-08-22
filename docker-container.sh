#melihat container yang ada
docker container ls -a

#buat container
docker container create --name namacontainer namaimage:tag
docker container create --name contohredis redis:latest