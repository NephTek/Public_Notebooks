```shell
helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

helm upgrade --install -n logging --create-namespace loki grafana/loki --version 2.16.0 -f values.loki.yaml -f values.loki.nephtek.yaml
helm upgrade --install -n logging --create-namespace promtail grafana/promtail -f values.promtail.yaml
```
