https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-task-definition.html


 "containerDefinitions": [
        {
            "name": "client", #can be anyname
            "image": "sonuajayin/multi-client", #image name
            "hostname": "client" # http://client (nginx config) else e.g google.com for http://google.com
            "essential": false //this means that if this container crashes others will be running, if true it shuts down others too, but atleast one contaainer should be essential
        }
    ]

Environment Properties will be entered in elasticbeanstal>environment>configuration>software

