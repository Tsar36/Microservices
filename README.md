# Microservices
The folder contains most popular services written in 'Dockerfile' or 'docker-compose.yml' creating a container service. Ready to deploy at any platform as a microservice in a container. 
To run the command use:
- "for Dockerfile use:" 'docker build [options] path/URL'
-  "for docker-compose files use:" 'docker-compose up -d'
## Example:
#gh-dark-mode-only docker build -t tsar/MySQL #gh-dark-mode-only
To run the image and to make a container:
- docker run -d -p 3306:3306 tsar/MySQL

