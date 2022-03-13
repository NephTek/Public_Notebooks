```shell
helm repo add loki https://grafana.github.io/loki/charts

helm repo update

helm upgrade --install -n logging --create-namespace loki grafana/loki -f values.loki.yaml -f values.loki.nephtek.yaml
helm upgrade --install -n logging --create-namespace promtail grafana/promtail -f values.promtail.yaml
```
