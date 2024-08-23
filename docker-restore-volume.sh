#Tahapan Restore Volume

docker volume create mongodatarestore

docker container run --rm --name ubunturestore --mount "type=bind,source=E:\Code\0.8_Belajar_Docker\backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest