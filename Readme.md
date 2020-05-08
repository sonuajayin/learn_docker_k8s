# Tagging Docker images

>docker build -t username/imagename:version .

# Create Image from a running container

>docker commit -c "Command" <running_containerid>

# Exec command to do commands on running container
>docker exec -it <containerid> sh

# Port mapping

>docker run -p incomingport:containerport <imageid>

# Open shell in the  image

>docker run -it <imageid> sh

# Working Directory

>WORKDIR <directory>
