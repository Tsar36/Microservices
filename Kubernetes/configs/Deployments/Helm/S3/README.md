## STEPS
1. Install helm
2. Initialize (if the version is <3)
```
kubectl create -f helm-rbac.yml
helm init --service-account tiller
```
3. Setup S3 helm repository.
Make sure to set the default region in s3.sh
```
./s3.sh
```
4. Package and push chart
```
export AWS_REGION=<yourregion> # if not set in ~/.aws
helm package demo-chart
helm s3 push ./demo-chart-0.0.1.tgz my-charts
```