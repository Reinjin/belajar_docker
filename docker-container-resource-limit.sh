# Membuat container Docker dengan nama 'smallnginx'
# --name smallnginx: Memberikan nama 'smallnginx' pada container
# --publish 8081:80: Memetakan port 8081 host ke port 80 container
# --memory 100m: Membatasi penggunaan memori container hingga 100 megabytes
# --cpus 0.5: Membatasi penggunaan CPU container hingga 0.5 core
# nginx:latest: Menggunakan image nginx versi terbaru
docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest