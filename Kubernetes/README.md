# Example with the "minikube"
## Execute the following kubernetes manifest (BASH) to deploy nginx deployment and a Nodeport service.
## Validate deployment and service:
- kubectl get all
## To validate the networking, get the service URL using the following command. 
## It will give you the node IP with NodePort in URL format.
- minikube service web-service --url
- http://192.168.105.2:31444