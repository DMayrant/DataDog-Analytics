# Datadog helm chart installation ☸️

Datadog is a Security Information Event Management (SIEM) for analyzing logs, metrics and traces and used for Observability

```bash
helm repo add datadog https://helm.datadoghq.com

helm repo update 

kubectl create ns datadog --dry-run -o yaml > datadog-ns.yaml 

kubectl create secret generic datadog-secret --from-literal=api-key="<API-TOKEN>" -n datadog

helm install my-datadog datadog/datadog --version 3.208.2 -n datadog -f values.yaml 
``` 