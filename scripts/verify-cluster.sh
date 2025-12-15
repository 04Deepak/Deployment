#!/bin/bash
set -e

echo "🔍 Verifying Kubernetes cluster..."

kubectl get nodes
kubectl get pods -A
kubectl cluster-info

echo "✅ Cluster verification complete"
