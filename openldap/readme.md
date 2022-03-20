```shell
helm repo add helm-openldap https://jp-gouin.github.io/helm-openldap/

helm upgrade --install -n openldap --create-namespace openldap helm-openldap/openldap-stack-ha -f values.nephtek.yaml
```
