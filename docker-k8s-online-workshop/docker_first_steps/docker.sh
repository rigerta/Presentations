# hub.docker.com is the largest public Docker registry
# You can access it with or without an account

https://hub.docker.com/

# Private Docker Registries: AWS ECR, Google Container Registry, private companies could also host their own etc.
# They require Authentication


# Let's see the list of images I have already downloaded on my machine:
docker images

# Let's check if I have any running containers:

docker ps

# Let's pull an image from Docker Hub. I will pull an image of a simple web server called nginx.
# Tags are used to version different images
docker pull nginx:1.25.3

# Now we will check if this image shows on my local images list:
docker images

### REPOSITORY                         TAG       IMAGE ID       CREATED         SIZE
### nginx                              1.25.3    81be38025439   2 weeks ago     192MB


# Let's run this image:
# Note: running the image in Detached (-d) mode will let us use the terminal, otherwise the terminal will be blocked

docker run -d nginx:1.25.3

# Let's check running containers

docker ps

### CONTAINER ID   IMAGE                  COMMAND                  CREATED          STATUS          PORTS     NAMES
### 1c2125b5f1b8   nginx:1.25.3           "/docker-entrypoint.…"   34 seconds ago   Up 32 seconds   80/tcp    upbeat_kowalevski

# Notice the name and the port it is running on
# Let's check the logs of this container

docker logs container_id

# In order to be able to reach the web server from our local machine, we would need to expose the container port to the host port we want it to map into
# Specific applications run on specific ports, SQL Server on 1433, nginx on 80, mysql on 3306 etc.
# Standard way of doing this is mapping the same port on the local machine as the default port of the service we are using


# Let's run it with the port binding:

docker run -d -p 9000:80 nginx:1.25.3

# I can have multiple nginx servers up and running in different ports:

docker run -d -p 9001:80 nginx:1.25.3

# Once I stop one container, the web server is not reachable anymore on that port / URL:

docker stop container_id

# Although containers are stopped, it does not mean they are removed.
# docker ps -a shows us all containers, also the stopped ones.
# We can remove them using the docker rm container_id command

docker ps -a







