#docker build -t burakunuvar/multi-client-k8s:latest -t burakunuvar/multi-client-k8s:$SHA -f ./client/Dockerfile.dev ./k8s/client
#docker build -t burakunuvar/multi-api-k8s:latest -t burakunuvar/multi-api-k8s:$SHA -f ./server/Dockerfile.dev ./k8s/api
#docker build -t burakunuvar/multi-worker-k8s:latest -t burakunuvar/multi-worker-k8s:$SHA -f ./worker/Dockerfile.dev ./k8s/worker
#docker push burakunuvar/multi-client-k8s:latest
#docker push burakunuvar/multi-api-k8s:latest
#docker push burakunuvar/multi-worker-k8s:latest
#docker push burakunuvar/multi-client-k8s:$SHA
#docker push burakunuvar/multi-api-k8s:$SHA
#docker push burakunuvar/multi-worker-k8s:$SHA
#kubectl apply -f k8s
#kubectl set image deployments/client-deployment client=burakunuvar/multi-client-k8s:$SHA
#kubectl set image deployments/server-deployment server=burakunuvar/multi-api-k8s:$SHA
#kubectl set image deployments/worker-deployment worker=burakunuvar/multi-worker-k8s:$SHA


docker build -t burakunuvar/multi-client:latest -t burakunuvar/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t burakunuvar/multi-api:latest -t burakunuvar/multi-api:$SHA -f ./server/Dockerfile ./api
docker build -t burakunuvar/multi-worker:latest -t burakunuvar/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push burakunuvar/multi-client:latest
docker push burakunuvar/multi-api:latest
docker push burakunuvar/multi-worker:latest

docker push burakunuvar/multi-client:$SHA
docker push burakunuvar/multi-api:$SHA
docker push burakunuvar/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=burakunuvar/multi-api:$SHA
kubectl set image deployments/client-deployment client=burakunuvar/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=burakunuvar/multi-worker:$SHA
