#!/bin/bash

# Execute the following kubernetes manifest to deploy nginx deployment and a Nodeport service

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  name: web-service
spec:
  ports:
  - name: http
    port: 80
  selector:
    app: web
  type: NodePort
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: web-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: web
  template:
    metadata:
      labels:
        app: web
    spec:
      containers:
      - image: nginx:1.14.2
        name: nginx
        ports:
        - containerPort: 80
EOF