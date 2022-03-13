```shell
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

helm repo update

helm upgrade --install -n ingress --create-namespace ingress-nginx ingress-nginx/ingress-nginx -f values.yaml -f values.rd.yaml
```
