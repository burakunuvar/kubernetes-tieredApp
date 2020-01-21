```
$ kubectl apply -f <foldername>
```

```
$ kubectl logs <containername> sh

$ kubectl get pods -o wide
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
$ kubectl create secret (generic or docker-registry or tls) <secretname --from-literal PGPASSWORD=password123

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
