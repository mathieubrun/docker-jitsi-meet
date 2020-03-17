# helm chart for jitsi

## WIP

- hostname has to be set up in :
  - jitsi-meet/values.yaml
  - values.yaml

## local test with minikube

```` sh
minikube start --vm-driver=virtualbox

kubectl create namespace jitsi-local
helm install --namespace jitsi-local jitsi . 
minikube service meet -n jitsi-local --url
````
