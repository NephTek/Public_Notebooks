```shell
git clone https://github.com/keycloak/keycloak-operator.git

kubectl apply -k kustomization/overlays/rancher-desktop/arm64

kubectl apply -f keycloak-postgres.yaml -n keycloak

PGPASSWORD=$(kubectl get secret keycloak.acid-keycloak-cluster.credentials.postgresql.acid.zalan.do -n keycloak -o 'jsonpath={.data.password}' | base64 -d)

kubectl create secret generic keycloak-db-secret -n keycloak \
        --from-literal=POSTGRES_DATABASE=keycloak \
        --from-literal=POSTGRES_EXTERNAL_ADDRESS=acid-keycloak-cluster.keycloak.svc.cluster.local \
        --from-literal=POSTGRES_EXTERNAL_PORT=5432 \
        --from-literal=POSTGRES_USERNAME=keycloak \
        --from-literal=POSTGRES_PASSWORD=$PGPASSWORD
        
kubectl label secret keycloak-db-secret app=keycloak -n keycloak

kubectl apply -f keycloak-sso.yaml -n keycloak
```
