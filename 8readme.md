
### running travis cli in a container

```
$ docker run -it -v $(pwd):/app ruby:2.3 sh
$ docker run -it -v ${pwd}:/app ruby:2.3 sh ( curly braces for windows etc)

$ gem install travis --no-rdoc --no-ri
$ gem install travis --no-document
$ gem install travis
$ travis
$ travis login --pro

```
=> As --no-ri and --no-doc are deprecated you have to use --no-document instead.
-no-ri-no-rdoc is not a valid parameter and wouldn't work.
```
=> copy json file
$ travis encrypt-file service-account.json -r burakunuvar/kubernetes-tieredApp --pro
```


=> To trigger updates there are 3 options :
   - deleting pods and redeploy
   - use versioning while tagging and re-run client-deployment
   - imperative ` kubectl set image <objtype>/<objname> <containername>=dockerhub`

   ```
   kubectl set image deployment/client-deployment client=burakunuvar/multi-client:v5

   ```

=>

```
$ git rev-parse HEAD
```


=> Update environment variables on Travis CI
```
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

```
=>Build different script for deployment


=> GCP secret

```

- gcloud config set project docker-kubernetes-on-gcp
- gcloud config set compute/zone us-central1-a
- gcloud container clusters get-credentials k8s-on-gcp
$ kubectl create secret (generic or docker-registry or tls) <secretname> --from-literal key=value

$ kubectl create secret generic pgpassword --from-literal PGPASSWORD=1234asdf

```


=>

```
1. Install Helm v3:

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh

$ helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm install my-nginx stable/nginx-ingress --set rbac.create=true
```
