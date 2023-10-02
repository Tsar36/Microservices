# Microservices
The most popular services have been written in 'Dockerfile' to create a container service. Ready to deploy at any platform as a microservice in a container. 
To run the command use:
    docker build [options] path/URL
Example:
    docker build -t tsar/MySQL
To run the image and to make a container:
    docker run -d -p 3306:3306 tsar/MySQL

