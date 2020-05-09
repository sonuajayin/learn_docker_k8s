# Docker

pull an image
>docker pull <imagename>

list images
>docker images

Run image
>docker run <imageid>
Run image but in backgroud (will not display logs)
>docker run -d <imageid>

list running containers
>docker ps

list all containers
>docker ps -a

stop a container
>docker stop <containerid>
stop all running containers
>docker stop $(docker ps -aq)
start a container
>docker start <containerid>

remove container
>docker rm <containerid
remove all stopped containers
>docker rm $(docker ps -aq)

remove image
>docker rmi <imageid>
remove all images
>docker rmi $(docker images -aq)

list 
Tagging Docker images
>docker build -t username/imagename:version .

Create Image from a running container
>docker commit -c "Command" <running_containerid>

Exec command to do commands on running container
>docker exec -it <containerid> sh

Port mapping
>docker run -p incomingport:containerport <imageid>

Open shell in the  image
>docker run -it <imageid> sh

Working Directory
>WORKDIR <directory>

Build docker file with diff name (e.g Dockerfile.dev)
>docker build -f Dockerfile.dev .

Run container in iteractive mode
>docker run -it -p 3000:3000 <containerid>

present working directory
>pwd

Map volume to docker (-it is used for interactive mode can use -d (for run in bakground) or nothing)
>docker run -it -p 3000:300 -v /app/node_modules -v $(pwd):/app <imageid>  

Here everything in present working  directory is mapped to workdirectoy in docker  
also we ae creating placeholder for the node_modules in the workdir (also known as bookmarking volumes), that mean when the docker is built it already has the node_modules folder so we dont mess with it. only rest of the files are mapped with volume  


run tests inside docker image (node app), you may not need -it
>docker run -it <imageid> npm run test
above will only have the snapshot but not realtime changes. in case you will need to rebuild.

run tests with volumes mapped.
>docker exec -it <running_container_where_volume_ismapped> npm run test

attach to stdin, stdout and stderr of a container
>docker attach <runningcontaainerid>