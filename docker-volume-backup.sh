#stop containernya dulu

E:\Code\0.8_Belajar_Docker\backup

#buat container backup
docker container create --name nginxbackup --mount "type=bind,source=E:\Code\0.8_Belajar_Docker\backup,destination=/backup" --mount "type=volume,source=mongodatavolume,destination=/data" nginx:latest

#start container backup
docker container start nginxbackup  

#masuk nginxbackup 
docker container exec -i -t nginxbackup /bin/sh

tar cvf /backup/backup.tar.gz /data

#stop dulu dan remove
docker container stop nginxbackup
docker container rm nginxbackup


#start dulu container mongodatavolume
docker container start mongodatavolume


#cara langsung backup
docker container run --rm --name ubuntubackup --mount "type=bind,source=E:\Code\0.8_Belajar_Docker\backup,destination=/backup" --mount "type=volume,source=mongodatavolume,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data
