```
$ kubectl apply -f <foldername>
```

```
$ kubectl logs <containername> sh

$ kubectl get pods -o wide

$ kubectl delete deployment <deploymentname>
```

volume vs persistent volume vs persistent volume claim

```
$ kubectl get storageclass
$ kubectl describe storageclass
```

```
& kubectl get pv
& kubectl get pvc
```


secrets :

```
$ kubectl create secret (generic or docker-registry or tls) <secretname> --from-literal key=value

$ kubectl create secret generic pgpassword --from-literal PGPASSWORD=1234asdf
$ kubectl get secrets
```

```
- name: PGPASSWORD
  valueFrom:
    secretKeyRef:
      name: pgpassword
      key: PGPASSWORD
```

Setting up Ingress with Docker Desktop's Kubernetes

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml

kubectl get svc -n ingress-nginx

```
