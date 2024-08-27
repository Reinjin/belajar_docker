# Tahapan Restore Volume

# Membuat volume Docker baru dengan nama 'mongodatarestore'
docker volume create mongodatarestore

# Menjalankan container sementara untuk melakukan restore
# --rm: Menghapus container setelah selesai dijalankan
# --name ubunturestore: Memberikan nama 'ubunturestore' pada container
# --mount "type=bind,source=E:\Code\0.8_Belajar_Docker\backup,destination=/backup": Melakukan bind mount direktori backup dari host ke container
# --mount "type=volume,source=mongorestore,destination=/data": Melakukan volume mount dari volume 'mongorestore' ke direktori /data di container
# ubuntu:latest: Menggunakan image Ubuntu versi terbaru
# bash -c "...": Menjalankan perintah bash untuk mengekstrak file backup ke dalam volume
docker container run --rm --name ubunturestore --mount "type=bind,source=E:\Code\0.8_Belajar_Docker\backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# Membuat container MongoDB baru dengan data yang telah di-restore
# --name mongorestore: Memberikan nama 'mongorestore' pada container
# --publish 27020:27017: Memetakan port 27020 host ke port 27017 container
# --mount "type=volume,source=mongorestore,destination=/data/db": Melakukan volume mount dari volume 'mongorestore' ke direktori /data/db di container
# --env MONGO_INITDB_ROOT_USERNAME=root: Mengatur variabel lingkungan untuk username root MongoDB
# --env MONGO_INITDB_ROOT_PASSWORD=root: Mengatur variabel lingkungan untuk password root MongoDB
# mongo:latest: Menggunakan image MongoDB versi terbaru
docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest