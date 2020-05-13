# K8s  

A Pod should be always smallest posible logical group of container.  

Node Port should be within 30000-32767  

Apply config file to kubectl (-f is for file) (filename can be path of file)  
>kubectl apply -f FULL_FILE_NAME  

Check wheter they are created  
>kubectl get pods  

Get all services running  
>kubectl get services  

Get the IP of minikube (since the services on local are running under that)  
>minikube ip  

Above IP recieved will be used to run the application in local dev browser  
  

Try Killing the running container by finding the container by docker ps.  
>docker kill RUNNING_CONTAINER_ID  

Run docker ps again and you will see it is again there  
Also see by running get pods and you will see restarts is 1.  

Get Detailed info about an object.  
>kubectl describe OBJECT_TYPE OBJECT_NAME  

Get All Objects of an object type  
>kubectl describe OBJECT_TYPE  

To Remove the Object  
>kubectl delete -f ORIGINAL_CONFIG_FILE  

### Update Objects  
To update objects in the pod, just update the config file (yaml) and apply,master will take care of it.  
Note : Kind and name in config files are unique identifiers so if updating these should not be changed. Even Filename should not change.  

Note : Containers, name, port can give error when changing, only image can be changed. So have a look below for work around (use Deployment Object)  

### Object Types  
|Object Types|   |
|------------|---|
|Pods        |Runs one or more closely related containers|
|Services    |Sets up networking in a Kubernetes cluster |
|Deployment  |Maintains a set of identical pods, ensuring that the have correct config and the right number exists   |  

Get All deployments  
>kubectl get deployments  

get more details  
>kubectl get pods -o wide  

To update a deployment we need to change the file but if the new image is pushed to hub and you reapply the config, K8s will just say file unchanged so below are solutions  
1. Delete Pods (not recommended)  
2. Add version in the image tag.(adds an extra step in our build pipeline)  
3. Use and imperative command to update the image version the deployment should use.  

Below steps to follow  
    a. tag the image with version number and push to docker hub  
    b. run kubectl cmmand forcing the deployment to use the new image version  
>kubectl set image OBJECT_TYPE/OBJECT_NAME CONTAINER_NAME=NEW_IMAGE_TO_USE  

e.g OBJECT_TYPE = deployment, OBJECT_NAME=client-deployment(from yaml metadata), CONTAINER_NAME=client(from yaml containers>name), NEW_IMAGE_TO_USE=sonuajayin/multi-client:v1  

>kubectl set image deployment/client-deployment client=sonuajayin/multi-client:v1  

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

Get logs from pods 
>kubectl logs POD_ID  

Start Shell in a pod  
>kubectl exec -it POD_ID sh  



