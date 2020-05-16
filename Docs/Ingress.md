#Ingress

There are 2 ingress  
1. ingress-nginx : https://github.com/kubernetes/ingress-nginx  
2. kubernetes-ingress : https://github.com/nginxinc/kubernetes-ingress  

Google cloud Load Balancing  
>https://cloud.google.com/load-balancing  

Read : https://www.joyfulbikeshedding.com/blog/2018-03-26-studying-the-kubernetes-ingress-system.html  

Ingress Help : https://kubernetes.github.io/ingress-nginx/deploy/#provider-specific-steps  
Ingress Mandatory Command https://kubernetes.github.io/ingress-nginx/deploy/#mandatory-command  

Deploy Ingress (Mandatory Command):  
>kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-0.32.0/deploy/static/provider/cloud/deploy.yaml  

Enable Ingress See Ingress Help  
>minikube addons enable ingress  

Verify Ingress  
>kubectl get svc -n ingress-nginx  

Apply config file  
>kubectl apply -f FILE-NAME