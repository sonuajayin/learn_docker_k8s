# K8s

A Pod should be always smallest posible logical group of container.  

Node Port should be within 30000-32767  

Apply config file to kubectl (-f is for file) (filename can be path of file)
>kubectl apply -f <filename>  

Check wheter they are create  
>kubectl get pods  

Get all services running  
>kubectl get services  

Get the IP of minikube (since the services on local are running under that)  
>minikube ip  
Above IP recieved will be used to run the application in local dev browser  

Try Killing the running container by finding the container by docker ps.  
>docker kill <runningcontainerid>  
Run docker ps again and you will see it is again there  
Also see by running get pods and you will see restarts is 1.  

Get Detailed info about an object.  
>kubectl describe <objecttype> <objectname>  

Get All Objects of an object type  
>kubectl describe <objecttype>  

To Remove the Object  
>kubectl delete -f <configfilewhichcreatedit>

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

Get All Deployements  
>kubectl get deployments  

get more details  
>kubectl get pods -o wide
