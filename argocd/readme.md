```shell
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade --install argocd argo/argo-cd --namespace argocd --create-namespace -f values.rancher-desktop.yaml
```
