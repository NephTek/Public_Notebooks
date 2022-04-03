# oauth2-proxy
Ref: https://github.com/oauth2-proxy/manifests/tree/main/helm/oauth2-proxy

```shell
helm repo add oauth2-proxy https://oauth2-proxy.github.io/manifests

# Simple Installation
helm upgrade --install oauth2-proxy oauth2-proxy/oauth2-proxy -n=oauth2-proxy --create-namespace -f values.rancher-desktop.yaml

kubectl apply -k kustomize/overlays/rancher-desktop
```

## Clean Up
```
helm delete --namespace keycloak oauth2-proxy
```

