#menggunakan bind mounts adalah untuk mengakses file atau direktori host dari container

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=E:\Code\0.8_Belajar_Docker\mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

E:\Code\0.8_Belajar_Docker\mongo-data