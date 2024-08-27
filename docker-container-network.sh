# Membuat network bridge baru dengan nama mongonetwork
docker network create --driver bridge mongonetwork

# Membuat container MongoDB dan menghubungkannya ke mongonetwork
# Mengatur username dan password root untuk MongoDB
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

# Membuat container Mongo Express dan menghubungkannya ke mongonetwork
# Mengatur port publikasi, URL koneksi ke MongoDB, dan kredensial basic auth
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodb:27017" --env ME_CONFIG_BASICAUTH_USERNAME=root --env ME_CONFIG_BASICAUTH_PASSWORD=root mongo-express:latest

# Memulai container MongoDB
docker container start mongodb 

# Memulai container Mongo Express
docker container start mongodbexpress

# Memutuskan koneksi container MongoDB dari mongonetwork
docker network disconnect mongonetwork mongodb

# Menghubungkan kembali container MongoDB ke mongonetwork
docker network connect mongonetwork mongodb