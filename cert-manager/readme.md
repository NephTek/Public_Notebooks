```shell
helm repo add jetstack https://charts.jetstack.io

kubectl apply -f secret.fake.yaml

helm upgrade --install cert-manager jetstack/cert-manager -n cert-manager --create-namespace -f values.cert-manager.yaml

kubectl apply -f clusterissuer.nephtek.yaml

kubectl apply -f certificate.nephtek.yaml
```
