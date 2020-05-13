# Docker Compose

Run Image (docker run IMAGE_TAG_OR_ID)  
>docker-compose up

docker build and run (rebuild)  
(docker build .)  
(docker run IMAGE_TAG_OR_ID)  
>docker-compose up --build  

Launch in background  
>docker-compose up -d  

Stop containers  
>docker-compose down  

list running containers for docker compose (only run within the directory where docker-compose.yml file is)  
>docker-compose ps  

## Automatic container restarts  
restart policies  
> "no" : never attempt to restart this if it stops or crashes  
> always : if this container stops *for any reason* always attempt to restart it  
> on-failure : Only restart if the container stops with an error code  
> unless-stopped : always restart unless we (the developers) forcibly stop it.  
