# SKAFFOLD CI/CD demo project
1. Dockerfile contains instructions for build an app image an run it in container.
2. "k8s-pod" is a pod configuration for our image that gonna be running in container that gonna be runing in a pod :)
3. "main.go" is a small web server. It's our app that gonna be deployed in image.
4. "Skaffold.yml" is our pipeline configuration. 

## To build this, just run:
```
skaffold dev
```
Skaffold will keep an eye on our application, monitor for changes while you are developing it. When a changes happens, it can execute this build/push/deploy workflow to the Kubernetes cluster.
## Useful commands for this project:
```
kubectl get pods
kubectl get svc # will show you a LoadBalancer link, copy that!
curl <loadbalancerlink>  # To check the web-server outputs = "Hello World"
```

...then we can make some changes in web server outputs and check the automation workflow of our Skaffold pipeline.