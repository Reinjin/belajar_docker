# Pull the latest nginx image from Docker Hub
docker image pull nginx:latest

# Create a new container named 'contohnginx' and map port 8080 on the host to port 80 in the container
docker container create --name contohnginx --publish 8080:80 nginx:latest

# Start the 'contohnginx' container
docker container start contohnginx

# Stop the 'contohnginx' container
docker container stop contohnginx