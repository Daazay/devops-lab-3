@echo off
echo Deploying roombook namespace...
kubectl apply -f k8s/common/namespace.yaml

echo Applying secrets...
kubectl apply -f k8s/common/secret.yaml

echo Deploying PostgreSQL...
kubectl apply -f k8s/postgres/deployment.yaml
kubectl apply -f k8s/postgres/service.yaml

echo Deploying backend API...
kubectl apply -f k8s/backend/deployment.yaml
kubectl apply -f k8s/backend/service.yaml

echo All resources applied.
pause