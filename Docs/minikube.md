#Minikube  

Get the IP of minikube (since the services on local are running under that)  
>minikube ip  

Above IP recieved will be used to run the application in local dev browser  

### Reconfigure CLI  
Connect the CLI to use docker inside the kubernetes node (minikube)  
>eval $(minikube docker-env)  

This is only applicable to the current terminal, so its not a permanent change  

To find what its doing  
>minikube docker-env  

### Why mess with docker in the node...  
To use same debugging techniques we use in docker cli.  
Manually kill containers to test K8s ability to self-heal.  
Delete cached images in the node.  
e.g >docker logs RUNNING_CONTAINER_ID, docker exec -it CONTAINER_ID sh  

### minikube dashboard  
>minikube dashboard