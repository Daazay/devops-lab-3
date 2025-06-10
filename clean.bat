@echo off
echo Deleting backend HPA...
kubectl delete -f k8s/backend/hpa.yaml

echo Deleting backend API...
kubectl delete -f k8s/backend/deployment.yaml
kubectl delete -f k8s/backend/service.yaml

echo Deleting PostgreSQL...
kubectl delete -f k8s/postgres/deployment.yaml
kubectl delete -f k8s/postgres/service.yaml

echo Deleting secrets...
kubectl delete -f k8s/common/secret.yaml

echo Deleting namespace...
kubectl delete -f k8s/common/namespace.yaml

echo Cleanup completed.
pause