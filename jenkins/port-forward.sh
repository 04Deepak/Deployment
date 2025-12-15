#!/bin/bash
set -e

echo "🌐 Port-forwarding Jenkins to localhost:8080"
kubectl port-forward svc/jenkins 8080:8080 -n jenkins
