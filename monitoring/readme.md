```shell
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

helm upgrade --install -n monitoring --create-namespace kps prometheus-community/kube-prometheus-stack -f values.yaml -f values.rancher-desktop.yaml

# To add oauth2-proxy authentication:
helm upgrade --install -n monitoring --create-namespace kps prometheus-community/kube-prometheus-stack -f values.yaml -f values.rancher-desktop.yaml -f values.oauth2-proxy.yaml
```
