# INSTALLATION:
```
    - kubectl create ns flux
    - export GHUSER="your-user-GitHub"	// Your GitHub user
fluxctl install \
--git-user=${GHUSER} \
--git-email=${GHUSER}@user.noreplay.github.com \
--git-url=git@github.com:${GHUSER}/flux-demo \	// Your path to GitHub repo
--git-path=namespaces,workloads \	// Make sure of existing folders in GitHub
--namespaces=flux | kubectl apply -f -
```
## Check rollout status:
```
kubectl -n flux rollout status deployment/flux
``` 
## Setup SSH key (add to the github repo "deploy keys")
```
fluxctl identity --k8s-fwd-ns flux
```
## SYNC repo manually (optional)
```
fluxctl sync --k8s-fwd-ns flux
```