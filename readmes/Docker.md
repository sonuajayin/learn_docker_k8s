Learning Docker & K8s

## pull an image
>docker pull <imagename>

## list images
>docker images

## Run image
>docker run <imageid>
## Run image but in backgroud (will not display logs)
>docker run -d <imageid>

## list running containers
>docker ps

## list all containers
>docker ps -a

## stop a container
>docker stop <containerid>
## stop all running containers
>docker stop $(docker ps -aq)
## start a container
>docker start <containerid>

## remove container
>docker rm <containerid
## remove all stopped containers
>docker rm $(docker ps -aq)

## remove image
>docker rmi <imageid>
## remove all images
>docker rmi $(docker images -aq)

## list 
## Tagging Docker images
>docker build -t username/imagename:version .

## Create Image from a running container
>docker commit -c "Command" <running_containerid>

## Exec command to do commands on running container
>docker exec -it <containerid> sh

## Port mapping
>docker run -p incomingport:containerport <imageid>

## Open shell in the  image
>docker run -it <imageid> sh

## Working Directory
>WORKDIR <directory>