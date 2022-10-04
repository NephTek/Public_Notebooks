#!/usr/bin/env bash

rm -rf keycloak/keycloak-operator
rm -rf kube-oidc-proxy/kube-oidc-proxy
rm -rf openldap/charts
rm -rf postgres/postgres-operator

helm repo remove jetstack
helm repo remove ingress-nginx
helm repo remove grafana
helm repo remove prometheus-community
helm repo remove oauth2-proxy
