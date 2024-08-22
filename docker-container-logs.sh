#melihat container log
docker container logs containerId/namacontainer
docker container logs contohredis

#melihat log secara realtime 
docker container logs -f containerId/namacontainer
docker container logs -f contohredis