#masuk ke container
docker container exec -i -t contohredis /bin/bash

ls
cd /
ls
redis-cli
set hello "halo kawan"
get hello

