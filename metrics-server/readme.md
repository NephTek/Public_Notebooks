# metrics-server

Ref: https://github.com/kubernetes-sigs/metrics-server/tree/master/charts/metrics-server

```script
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/ 

helm upgrade --install metrics-server metrics-server/metrics-server -n kube-system -f values.docker-desktop.yaml
```
