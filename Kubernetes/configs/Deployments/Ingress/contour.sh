#!/bin/bash

echo "Ger 'Contour' ingress controller"
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
sleep 1
kubectl get services -n projectcontour

echo "Creating deployments"

kubectl create deployment main --image=tsar36/app-php:latest
kubectl create deployment web1 --image=tsar36/app-php:version1
kubectl create deployment web2 --image=tsar36/app-php:version2
kubectl get pods
kubectl get deploy

echo "Scaling..."

kubectl scale deployment main --replicas 2
kubectl scale deployment web1 --replicas 2
kubectl scale deployment web2 --replicas 2
kubectl get pods
kubectl get deploy
kubectl get services

echo "Expose the ports as a service"

kubectl expose deployment main --port=80
kubectl expose deployment web2 --port=80
kubectl expose deployment web1 --port=80
kubectl get services -o wide

echo "After deployment a YML host file - run next: "
echo " # kubectl get ingress"
echo " # kubectl describe ingress"