# Travis CLI and Encrypting File

Install Travis CLI(requires ruby to be installed locally)  
Go : https://github.com/travis-ci/travis.rb  

Better we will install with docker and run shell.  

# Installing
1. Get and Run Ruby (I am running where I have kept my file (service-account.json from google cloud))  
>docker run -it -v $(pwd):/app ruby:2.4 sh  

2. Install Travis Inside the above shell  
>gem install travis --no-rdoc --no-ri  

Or  

>gen install travis  

3. Login to Travis  
>travis login

4. Encrypt file  
>travis encrypt-file service-account.json -r sonuajayin/learn_docker_k8s  

5. Take the command outputted and put it in the before_install for .travis.yml  

6. Take the encrypted file and add it to your code repo in the root  

