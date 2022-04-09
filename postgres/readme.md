```shell
git clone https://github.com/zalando/postgres-operator.git

helm upgrade --install postgres-operator postgres-operator/charts/postgres-operator -n zalando --create-namespace

helm upgrade --install postgres-operator-ui postgres-operator/charts/postgres-operator-ui -f values.postgres-operator-ui.yaml -n zalando

```
