## Example app
### Example app (from istio)
```
export PATH="$PATH:/home/ubuntu/istio-1.0.1/bin"
kubectl apply -f <(istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml)
```
### Hello world app
```
export PATH="$PATH:/home/ubuntu/istio-1.0.1/bin"
kubectl apply -f <(istioctl kube-inject -f hello.yaml)
kubectl apply -f helloworld-gw.yaml # (If you want to contact with app, make deploy a Gateway)
```
```
kubectl get pods
kubectl get svc -n istio-system -o wide # take the url-ALB
kubectl get virtualservice
```
```
curl <url-loadbalancer>/hello
```