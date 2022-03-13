```shell
helm repo add jetstack https://charts.jetstack.io

helm repo update

helm upgrade --install cert-manager jetstack/cert-manager -n cert-manager --create-namespace -f values.cert-manager.yaml
```
