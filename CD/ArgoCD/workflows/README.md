# Directly Install Argo Workflows

As a quick method, you can use the Helm chart for Argo Workflows, which often includes up-to-date installation instructions:

## Add the Argo Helm Repository:
```
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
```
## Install Argo Workflows Using Helm:
```
helm install argo argo/argo-workflows --namespace argo --create-namespace
```
## After installation, verify the CRDs and pods:
```
kubectl get crds | grep workflows.argoproj.io
kubectl get pods -n argo
```

##################################################################################################

# Next Steps
## Check Pod Status:
```
kubectl logs -n argo argo-argo-workflows-server-d7c4fcf8c-l4v89
```
## Submit Your Workflow:
## Once the argo-argo-workflows-server pod is in the Running state, you should be able to submit your workflow:
```
argo submit -n argocd --watch python-multisteps-workflow.yaml
```
You can monitor the status of your workflows using:
```
argo list -n argocd
argo get <workflow-name> -n argocd
```