docker build -t burakunuvar/multi-client-k8s:latest -t burakunuvar/multi-client-k8s:$SHA -f ./client/Dockerfile.dev ./k8s/client
docker build -t burakunuvar/multi-api-k8s:latest -t burakunuvar/multi-api-k8s:$SHA -f ./server/Dockerfile.dev ./k8s/api
docker build -t burakunuvar/multi-worker-k8s:latest -t burakunuvar/multi-worker-k8s:$SHA -f ./worker/Dockerfile.dev ./k8s/worker
docker push burakunuvar/multi-client-k8s:latest
docker push burakunuvar/multi-api-k8s:latest
docker push burakunuvar/multi-worker-k8s:latest
docker push burakunuvar/multi-client-k8s:$SHA
docker push burakunuvar/multi-api-k8s:$SHA
docker push burakunuvar/multi-worker-k8s:$SHA
kubectl apply -f k8s
kubectl set image deployments/client-deployment client=burakunuvar/multi-client-k8s:$SHA
kubectl set image deployments/server-deployment server=burakunuvar/multi-api-k8s:$SHA
kubectl set image deployments/worker-deployment worker=burakunuvar/multi-worker-k8s:$SHA
