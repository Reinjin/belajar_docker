
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

#Dockerignore instruction
# Build a Docker image named 'reinjin/dockerignore' from the Dockerfile in the 'ignore' directory
docker build -t reinjin/dockerignore ignore
# Create a new container named 'dockerignore' from the 'reinjin/dockerignore' image
docker container create --name dockerignore reinjin/dockerignore
# Start the 'dockerignore' container
docker container start dockerignore
# Display the logs of the 'dockerignore' container
docker container logs dockerignore

#EXPOSE
# Build a Docker image named 'reinjin/expose' from the Dockerfile in the 'expose' directory
docker build -t reinjin/expose expose
# Inspect the details of the 'reinjin/expose' image to verify the EXPOSE instruction
docker image inspect reinjin/expose
# Create a new container named 'expose' from the 'reinjin/expose' image
# Map port 8080 of the host to port 8080 of the container
docker container create --name expose -p 8080:8080 reinjin/expose
# Start the 'expose' container
docker container start expose
# Display the logs of the 'expose' container
# This will show the output of the Go application running inside the container
docker container logs expose
# Note: You can now access the "Hello, World!" message by visiting http://localhost:8080 in your web browser


#ENV Variable
# Build a Docker image named 'reinjin/env' from the Dockerfile in the 'env' directory
docker build -t reinjin/env env
# Inspect the details of the 'reinjin/env' image to verify the ENV instruction
docker image inspect reinjin/env
# Create a new container named 'env' from the 'reinjin/env' image, setting APP_PORT to 9090 and mapping host port 9090 to container port 9090
docker container create --name env --env APP_PORT=9090 -p 9090:9090 reinjin/env
# Start the 'env' container
docker container start env  
# Display the logs of the 'env' container, showing the output of the Go application running inside
docker container logs env   

