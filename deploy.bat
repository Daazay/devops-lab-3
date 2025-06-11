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

echo Deploying backend HPA...
kubectl apply -f k8s/backend/hpa.yaml

echo Deploying monitoring namespace...
kubectl apply -f k8s/monitoring/namespace.yaml

echo Applying monitoring secrets...
kubectl apply -f k8s/monitoring/secret.yaml

echo Deploying Prometheus...
kubectl apply -f k8s/monitoring/prometheus/configmap.yaml
kubectl apply -f k8s/monitoring/prometheus/deployment.yaml
kubectl apply -f k8s/monitoring/prometheus/service.yaml

echo Deploying Grafana...
kubectl apply -f k8s/monitoring/grafana/deployment.yaml
kubectl apply -f k8s/monitoring/grafana/service.yaml

echo All resources applied.
pause