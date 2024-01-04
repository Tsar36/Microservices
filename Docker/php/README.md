#Dockerfile with PHP application
#To run the app in docker container:

# docker build -t myk8sapp .
# docker tag myk8sapp:latest Tsar36/k8s:latest
# docker login
# docker push appphp/k8s:latest
# docker run -it -p 1234:80 Tsar36/k8s:latest
# http://localhost:1234