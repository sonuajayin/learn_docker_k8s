docker build -t sonuajayin/multi-client:latest -t sonuajayin/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t sonuajayin/multi-server:latest -t sonuajayin/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t sonuajayin/multi-worker:latest -t sonuajayin/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push sonuajayin/multi-client:latest
docker push sonuajayin/multi-server:latest
docker push sonuajayin/multi-worker:latest

docker push sonuajayin/multi-client:$SHA
docker push sonuajayin/multi-server:$SHA
docker push sonuajayin/multi-worker:$SHA

kubectl apply -f k8s

kubectl set image deployments/server-deployment server=sonuajayin/multi-server:$SHA
kubectl set image deployments/client-deployment client=sonuajayin/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=sonuajayin/multi-worker:$SHA
