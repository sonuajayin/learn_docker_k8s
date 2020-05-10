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