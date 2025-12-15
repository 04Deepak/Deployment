#!/bin/bash
set -e

echo "⚠️ Deleting Kind cluster..."
kind delete cluster --name jenkins-cluster

echo "🧹 Cleanup completed"
