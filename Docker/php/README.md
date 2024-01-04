#Dockerfile with PHP application
#To run the app in docker container:

##Create a docker image from the Dockerfile
# docker build -t myk8sapp . 
##Rename the image and push to the repo
# docker tag myk8sapp:latest Tsar36/k8s:latest
# docker login
# docker push appphp/k8s:latest
##Run the container with php application
# docker run -it -p 1234:80 Tsar36/k8s:latest
##To check the application running on the localhost:1234
# http://localhost:1234