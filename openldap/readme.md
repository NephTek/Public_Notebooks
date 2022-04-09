# https://charts.helm.sh/stable/

```shell
helm repo add stable https://charts.helm.sh/stable
helm upgrade --install -n openldap --create-namespace openldap stable/openldap -f values.openldap.nephtek.yaml

helm repo add cetic https://cetic.github.io/helm-charts
helm upgrade --install -n openldap phpldapadmin cetic/phpldapadmin -f values.phpldapadmin.rancher-desktop.yaml

kubectl apply -k kustomize/overlays/rancher-desktop/

```
