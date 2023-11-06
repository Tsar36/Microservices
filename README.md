# Microservices
The most popular services which has been written in 'Dockerfile' or 'docker-compose.yml' to create a container service. Ready to deploy at any platform as a microservice in a container. 
To run the command use:
-  docker build [options] path/URL
### docker-compose up -d
## Example:
docker build -t tsar/MySQL
To run the image and to make a container:
docker run -d -p 3306:3306 tsar/MySQL

