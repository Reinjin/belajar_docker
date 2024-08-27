# Membuat container Docker dengan nama 'contohmongo'
# --name contohmongo: Memberikan nama 'contohmongo' pada container
# --publish 27017:27017: Memetakan port 27017 host ke port 27017 container
# --env MONGO_INITDB_ROOT_USERNAME=root: Mengatur variabel lingkungan untuk username root MongoDB
# --env MONGO_INITDB_ROOT_PASSWORD=root: Mengatur variabel lingkungan untuk password root MongoDB
# mongo:latest: Menggunakan image MongoDB versi terbaru
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest