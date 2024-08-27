docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodb:27017" --env ME_CONFIG_BASICAUTH_USERNAME=root --env ME_CONFIG_BASICAUTH_PASSWORD=root mongo-express:latest

docker container start mongodb 
docker container start mongodbexpress

docker network disconnect mongonetwork mongodb
docker network connect mongonetwork mongodb