# Kubernetes Local Setup  

### Installation for local  
1. Install Virtual Box from https://www.virtualbox.org/wiki/Linux_Downloads. Test Installation  
>VBoxManage -version  

2. Install Kubectl : https://kubernetes.io/docs/tasks/tools/install-kubectl/ and verify.  
>kubectl version --client  

3. Install Minikube https://kubernetes.io/docs/tasks/tools/install-minikube/ and verify.  
>minikube version  

4. Start minikube  
>minikube start  

5. Check all is running, First minikube  
>minikube status  

6. kubectl check  
>kubectl cluster-info  

### Alternatively Docker Desktop's Kubernetes can be used instead of Minikube