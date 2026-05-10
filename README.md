# DataDog Observability for Kubernetes 🔎

This infrastructure deploys a nginx application and exposes it to a cluster IP service to connect to nginx application. A test pod was also deployed as tool to test internal service discovery and DNS resolution within the kubernetes cluster. 

For Security Information Event Management (SIEM) and observability DataDog helm charts were installed in the datadog namespace for cluster monitoring. Datadog is cloud based security platform that that SRE, DevSecOps, and platform engineering teams use to monitor logs, metrics and traces in realtime

# Prerequisites 📝
- Kubernetes cluster
- Kubernetes service
- Datadog helm chart installed 
- Test Pod 
- daemonsets 