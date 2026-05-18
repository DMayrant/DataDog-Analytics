#!/bin/bash 
set -euo pipefail 

NS="datadog"
DEPLOY="datadog-deploy"
SVC="datadog-svc"

echo "================================="
echo "Validating Namespace"

if ! kubectl get ns "$NS" >/dev/null 2>&1; then
    kubectl create namespace "$NS"
else
    echo "Namespace $NS already exists"
fi
 
echo "================================="
echo "Checking for existing Deployment"
kubectl get all -n "$NS"
kubectl logs deploy/"$DEPLOY" -n "$NS" 
kubectl get pods -n "$NS" -o wide 
kubectl describe deploy "$DEPLOY" -n "$NS"

echo "================================="
echo "Checking for existing service"
kubectl get svc -n "$NS"
kubectl describe svc "$SVC" -n "$NS"

echo "============================="
echo "Checking for existing secret"
kubectl get secret -n "$NS"
kubectl get secret -n "$NS" -o yaml 
kubectl describe secret datadog-secret -n "$NS"


