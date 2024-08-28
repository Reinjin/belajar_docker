
#from instruction
#docker build -t <nama_image> <path>
docker build -t reinjin/from from

#run instruction
#docker build -t <nama_image> <path> --progress=plain --no-cache
docker build -t reinjin/run run
docker build -t reinjin/run run --progress=plain --no-cache

# Build a Docker image named 'reinjin/command' from the Dockerfile in the 'command' directory
docker build -t reinjin/command command

# Inspect the details of the 'reinjin/command' image
docker image inspect reinjin/command

# Create a new container named 'command' from the 'reinjin/command' image
docker container create --name command reinjin/command

# Start the 'command' container
docker container start command 

# Display the logs of the 'command' container
docker container logs command   

#label instruction
docker build -t reinjin/label label

#ADD instruction
# Build a Docker image named 'reinjin/add' from the Dockerfile in the 'add' directory
docker build -t reinjin/add add

# Create a new container named 'add' from the 'reinjin/add' image
docker container create --name add reinjin/add

# Start the 'add' container
docker container start add

# Display the logs of the 'add' container
docker container logs add   

#COPY instruction
# Build a Docker image named 'reinjin/copy' from the Dockerfile in the 'copy' directory
docker build -t reinjin/copy copy
# Create a new container named 'copy' from the 'reinjin/copy' image
docker container create --name copy reinjin/copy
# Start the 'copy' container
docker container start copy
# Display the logs of the 'copy' container
docker container logs copy





