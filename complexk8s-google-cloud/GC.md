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
1. Apply yaml config file  
> kubectl apply --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.11/deploy/manifest/00-crds.yaml  

2. Create the namespace for cert-manager  
> kubectl create namespace cert-manager  

3. Add jetstack helm repository  
>helm repo add jetstack https://charts.jetstack.io  

4. Update your local Helm chart repo cache  
> helm repo update  

5. Install the cert-manager helm chart
> helm install cert-manager --namespace cert-manager --version v0.11.0 jetstack/cert-manager  

cert-manager.io/v1alpha2

solvers:
 -http01:
     ingress:
       class: nginx

       cert-manager.io/cluster-issuer

