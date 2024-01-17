## Simple web server on Node.js which includes a Dockerfile, packages.js, index.js

# How to build?
'''
docker build .
#For the M1 silicon cpu
docker build --platform linux/amd64 -t nodejs:latest

'''
# How to run a container?

'''
docker run --platform linux/amd64 -p 3000:3000 -it nodejs:latest

'''
