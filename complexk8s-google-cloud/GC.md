### Storing secret to google cloud K8s cluster

Activate cloud Shell by using the symbol on top of the Google Cloud dashboard >_  
Run the command to setup from line 14 - 16 from .travis.yml  

### Run secret command  
>kubectl create secret generic pgpassword --from-literal PG_PASSWORD=pgPass1234  

### Install Helm 3  https://helm.sh/docs/intro/install/  https://github.com/helm/helm  
>curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3  
>chmod 700 get_helm.sh  
>./get_helm.sh  

### Install Ingress-Nginx  
>helm repo add stable https://kubernetes-charts.storage.googleapis.com  
>helm install my-nginx stable/nginx-ingress --set rbac.create=true  

After deployment open the IP of ingress controller unders services tab in GC  

### Point the Public IP of ingress to your domain name by adding A records.  

### https setup

### Cert Manager Installation  
1. Follow https://cert-manager.io/docs/installation/kubernetes/ 

2. Install the issuer and certificate yaml files with redeployement  

To verify the Certificates go to GC Shell  
>kubectl get certificates   



