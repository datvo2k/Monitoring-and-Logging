#!/bin/bash

sudo kubectl create ns monitoring
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# helm repo add grafana https://grafana.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring


# helm install prometheus prometheus-community/prometheus --namespace monitoring --set alertmanager.persistentVolume.storageClass="gp2" --set server.persistentVolume.storageClass="gp2"
# helm install grafana grafana/grafana --namespace monitoring --set persistence.storageClassName="gp2" --set persistence.enabled=true --set adminPassword='admin' --values ./grafana.yaml --set service.type=LoadBalancer


