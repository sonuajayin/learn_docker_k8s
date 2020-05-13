# Docker

pull an image
>docker pull IMAGE_TAG

list images
>docker images

Run image
>docker run IMAGE_TAG_OR_ID  

Run image but in backgroud (will not display logs)  
>docker run -d IMAGE_ID_OR_TAG

list running containers
>docker ps

list all containers
>docker ps -a  

stop a container  
>docker stop CONTAINER_ID    

stop all running containers  
>docker stop $(docker ps -aq)  

start a container  
>docker start CONTAINER_ID  

remove container  
>docker rm CONTAINER_ID  

remove all stopped containers   
>docker rm $(docker ps -aq)  

remove image  
>docker rmi IMAGE_TAG_OR_ID  

remove all images  
>docker rmi $(docker images -aq)  


Tagging Docker images  
>docker build -t username/imagename:version .  

Create Image from a running container  
>docker commit -c RUNNING_CONTAINER_ID  

Exec command to do commands on running container  
>docker exec -it RUNNING_CONTAINER_ID_OR_IMAGE sh  

Get logs of running container  
>docker logs RUNNING_CONTAINER_ID  

Port mapping  
>docker run -p incomingport:containerport IMAGE_TAG_OR_ID  

Open shell in the  image  
>docker run -it IMAGE_TAG_OR_ID sh  

Working Directory  
>WORKDIR DIRECTORY  

Build docker file with diff name (e.g Dockerfile.dev)  
>docker build -f Dockerfile.dev .  

Run container in iteractive mode  
>docker run -it -p 3000:3000 CONTAINER_ID  

present working directory  
>pwd  

Map volume to docker (-it is used for interactive mode can use -d (for run in bakground) or nothing)  
>docker run -it -p 3000:300 -v /app/node_modules -v $(pwd):/app IMAGE_TAG_OR_ID    

Here everything in present working  directory is mapped to workdirectoy in docker  
Also we are creating placeholder for the node_modules in the workdir (also known as bookmarking volumes), that mean when the docker is built it already has the node_modules folder so we dont mess with it. only rest of the files are mapped with volume  


run tests inside docker image (node app), you may not need -it  
>docker run -it IMAGE_TAG_OR_ID npm run test  

above will only have the snapshot but not realtime changes. in case you will need to rebuild.  

  
run tests with volumes mapped.  
>docker exec -it RUNNING_CONTAINER_ID_WHERE_VOLUME_IS_MAPPED npm run test  

attach to stdin, stdout and stderr of a container  
>docker attach <runningcontaainerid>  

Login to Docker cli  
>docker login  

Push newly built image to docker hub  
>docker push <tagname>  