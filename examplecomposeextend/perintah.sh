#cara menjalankan docker compose dengan file yaml yang berbeda
docker compose -f prod.yaml create

#cara docker compose merge file yaml
docker compose -f docker-compose.yaml -f dev.yaml create

