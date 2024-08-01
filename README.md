# Microservices
The folder contains most popular services written in 'Dockerfile' or 'docker-compose.yml' creating a container service. Ready to deploy at any platform as a microservice in a container. These samples offer a starting point for how to integrate different services using a Compose file.
To run the command use:
- "for Dockerfile use:" `docker build [options] path/URL`
-  "For docker-compose files use:" `docker-compose up -d`
## Example:
- `docker build -t tsar/MySQL`
- _*To run the image and to make a container:*_
- `docker run -d -p 3306:3306 tsar/MySQL`

## The Kubernetes section contains the most useful templates for pods, services, and features.
