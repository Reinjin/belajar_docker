# Create a Docker volume named 'mongodatavolume' to persist MongoDB data
docker volume create mongodatavolume

# Create a Docker container for MongoDB:
# - Name it 'mongodatavolume'
# - Map container port 27017 to host port 27019
# - Mount the 'mongodatavolume' to '/data/db' in the container
# - Set root username and password environment variables
# - Use the latest MongoDB image
docker container create --name mongodatavolume --publish 27019:27017 --mount "type=volume,source=mongodatavolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

# Start the MongoDB container
docker container start mongodatavolume

# Stop the MongoDB container
docker container stop mongodatavolume

# Remove the MongoDB container (note: this doesn't remove the volume)
docker container rm mongodatavolume