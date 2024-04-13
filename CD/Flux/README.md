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
Kubectl -n flux rollout status deployment/flux
``` 
