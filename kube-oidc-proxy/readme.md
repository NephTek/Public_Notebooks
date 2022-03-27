Ref: https://github.com/jetstack/kube-oidc-proxy


```shell
git clone https://github.com/jetstack/kube-oidc-proxy.git

# Deploy Kube-Prometheus-Stack (Grafana, Prometheus, AlertManager) with persistent volume claim
helm upgrade --install -n kube-oidc-proxy kube-oidc-proxy kube-oidc-proxy/deploy/charts/kube-oidc-proxy/ -f values.nephtek.yaml

kubectl apply -f ingress.yaml -n kube-oidc-proxy
```
