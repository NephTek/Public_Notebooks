# Nephtek Public Notebooks

This repository contains a number of Jupyter Notebooks that 
install and configure a complete Internal Developer Platform, 
built on top of Kubernetes, that provides a consistent experience
from development to production.

## Getting Started

To begin, you'll need to install Jupyter locally and the appropriate 
kernel for your platform (bash for WSL, Linux, and MacOS; Powershell
for Windows).  At this time, the PowerShell scripts are not complete.
Check back for updates.

1. [Notebook - Learning Jupyter](./getting-started/learning_jupyter.ipynb)
2. Install Kubernetes
    - Desktop
      - [Rancher Desktop](https://rancherdesktop.io) - fully free, allows selection of k8s version
      - [Docker Desktop](https://www.docker.com/products/docker-desktop/) - requires license fee for large organizations
      - [Minikube](https://minikube.sigs.k8s.io/docs/start/)
      - [kind](https://kind.sigs.k8s.io) - can simulate multi-node cluster
      - [MicroK8s](https://microk8s.io) - for Ubuntu Linux
    - On-premises
      - [Kubespray](https://github.com/kubernetes-sigs/kubespray) - uses Ansible, Kubeadm
      - [Kubeadm](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)
      - [Rancher](https://docs.ranchermanager.rancher.io/pages-for-subheaders/install-upgrade-on-a-kubernetes-cluster)
      - [k3s](https://k3s.io) - lightweight, good for edge devices
      - [k0s](https://k0sproject.io) - lightweight, good for edge devices
    - Cloud
      - [GKE](https://cloud.google.com/kubernetes-engine)
      - [AKS](https://azure.microsoft.com/en-us/services/kubernetes-service/)
      - [EKS](https://aws.amazon.com/eks/)
      - [DigitalOcean](https://www.digitalocean.com/products/kubernetes)
      - many others
3. Install Jupyter kernel for your platform
    - [Notebook - MacOS: bash kernel](./getting-started/mac/install_jupyter_bash_kernel.ipynb)
    - [Notebook - Linux/WSL: bash kernel](./getting-started/linux/install_jupyter_bash_kernel.ipynb)
    - Windows: PowerShell kernel: coming soon!
4. [Notebook - Install Kubernetes](./kubernetes/install_k8s_cluster.ipynb)
5. Setup DNS for your platform
    - Mac: [Notebook - Install DNSmasq](./dnsmasq/mac/install_dnsmasq.ipynb)
    - Linux: Install DNSmasq... coming soon!
    - Windows: Install Acrylic... coming soon!
   
## Components

For the most part, these components can be installed in any order, and
can be mixed and matched--install just what you want or need!  One
exception is the Kube-Prometheus-Stack--this component installs the 
Prometheus Operator that provides monitoring and alerting used by many
of the other components.

### Observability

- Monitoring
  - [Kube-Prometheus-Stack](./monitoring/install_kube-prometheus-stack.ipynb)
  - [Thanos](https://thanos.io) - coming soon!
  - Logging: [Loki and Promtail](./logging/install_loki.ipynb)
  - APM: coming soon!
    - [Jaeger](https://www.jaegertracing.io)
    - [Tempo](https://grafana.com/oss/tempo/)
    - [OpenTelemetry](https://opentelemetry.io)

### Infrastructure

- TLS Management: [cert-manager](./cert-manager/install_cert-manager.ipynb)
  - Ingress Controller: [ingress-nginx](./ingress/install_ingress-nginx.ipynb)
  - Databases
    - Postgres: [Zalando Operator](./postgres/install_postgres.ipynb)
    - [MySQL](https://github.com/percona/percona-xtradb-cluster-operator): coming soon!
    - [Neo4J](https://github.com/lukasz-antoniak/neo4j-operator): coming soon!
  - In-memory caches
    - [Redis](https://docs.opstreelabs.in/redis-operator/): coming soon!
    - [MemCached](https://github.com/ianlewis/memcached-operator): coming soon!
  - Queueing and Messaging
    - [Kafka](https://strimzi.io): coming soon!
    - [RabbitMQ](https://github.com/rabbitmq/cluster-operator): coming soon!

### Authentication + SSO

- [OpenLDAP](./openldap/install_openldap.ipynb)
  - [Keycloak](./keyclaok/install_keycloak.ipynb)
  - [kube-oidc-proxy](./kube-oidc-proxy/install_kube-oidc-proxy.ipynb)
  - [oauth2-proxy](./oauth2-proxy/install_oauth2-proxy.ipynb)
  - [Dex](https://dexidp.io) - coming soon!
  - [Ory](https://www.ory.sh/open-source/) - coming soon!
    - [kratos](https://www.ory.sh/kratos/): Identity server
    - [hydra](https://www.ory.sh/hydra/): OIDC / OAuth 2.0
    - [oathkeeper](https://www.ory.sh/oathkeeper/): Identity and Access Proxy
    - [keto](https://www.ory.sh/keto/): authorization server

### Data Science

- [Kubeflow](https://www.kubeflow.org): coming soon!
  - [Spark](https://spark.apache.org): coming soon!
  - [AirTable](https://www.airtable.com): coming soon!

### CI/CD

- [ArgoCD](https://argoproj.github.io/cd/): coming soon!
  - [Flux](https://fluxcd.io): coming soon!
  - [Rancher Fleet](https://fleet.rancher.io): coming soon!
  - [GitLab runners](https://docs.gitlab.com/runner/install/kubernetes.html): coming soon!
  - [GitHub action runners](https://github.com/actions-runner-controller/actions-runner-controller): coming soon!
  - [Azure DevOps agents](https://github.com/emberstack/docker-azure-pipelines-agent): coming soon!

### SecOps

- Policy enforcement: coming soon
  - [Kyverno](https://kyverno.io)
  - [OPA Gatekeeper](https://github.com/open-policy-agent/gatekeeper)
  - Static image scanning: coming soon!
    - [Trivy](https://github.com/aquasecurity/trivy)
    - [Clair](https://github.com/aquasecurity/trivy)
    - [Anchore](https://github.com/anchore/anchore-engine)
    - [Snyk](https://docs.snyk.io/products/snyk-container)
  - Runtime scanning: [Falco](https://sysdig.com/opensource/falco/): coming soon!
  - CLI tools: coming soon!
    - [kube-hunter](https://github.com/aquasecurity/kube-hunter)
    - [Popeye](https://github.com/derailed/popeye)
  - Secrets management: coming soon!
    - [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets)
    - [git-crypt](https://github.com/AGWA/git-crypt)
    - [SOPS](https://github.com/mozilla/sops)
    - [Hashicorp Vault](https://www.vaultproject.io)
  - Docker registry + supply chain
    - [Harbor](https://goharbor.io)
    - [Notary](https://github.com/notaryproject/notary)
    - [sigstore](https://www.sigstore.dev)

### Developer Tools

- Cluster development: coming soon!
  - [DevSpace](https://devspace.sh)
  - [Tilt](https://tilt.dev)
  - [Skaffold](https://skaffold.dev)
  - CLI tools: coming soon!
    - [kubectl](https://kubernetes.io/docs/tasks/tools/)
    - [helm](https://helm.sh/docs/intro/)
    - [jq](https://stedolan.github.io/jq/download/)
    - [fzf](https://github.com/junegunn/fzf)
    - [fubectl](https://github.com/kubermatic/fubectl)
    - [krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)
    - [view-secrets](https://github.com/elsesiy/kubectl-view-secret)
    - [Popeye](https://github.com/derailed/popeye)
