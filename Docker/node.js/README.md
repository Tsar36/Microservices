# Simple web server on Node.js which includes a Dockerfile, packages.js, index.js

## How to build?
```
 docker build .

#--- For the M1 silicon Macbook ---#
 docker build --platform linux/amd64 -t nodejs:latest . 

```

# How to run a container?

```
 docker run --platform linux/amd64 -it -p 3000:3000 nodejs:latest

```
## open & check at: http://localhost:3000

### Connect into the container is impossible by missing the shell into the based image 'gcr.io/distroless'.
### You can use the 'node' to run into container:

```
 docker exec -ti <insert_docker_id> node

```