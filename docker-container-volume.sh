docker volume create mongodatavolume

docker container create --name mongodatavolume --publish 27019:27017 --mount "type=volume,source=mongodatavolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

docker container start mongodatavolume

docker container stop mongodatavolume

docker container rm mongodatavolume