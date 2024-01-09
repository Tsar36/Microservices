#Dockerfile with PHP application of the Web-Server
#To run the app in docker container:

##Create a docker image from the Dockerfile
# docker build -t <NAME_app> . 
##Rename the image and push to the repo
# docker tag myk8sapp:latest <LOGIN/NAME_app>:latest
# docker login
# docker push <LOGIN/NAME_app>:latest
##Run the container with php application
# docker run -it -p 1234:80 <LOGIN/NAME_app>:latest
##To check the application running on the localhost:1234
# http://localhost:1234
#----------------------------------------------------------
#Ready to pull image from the Docker-Hub:
## docker pull tsar36/app-php:latest
#Run as container:
## docker run -it -p 1234:80 tsar36/app-php:latest

##To check the application running on the localhost:1234
# http://localhost:1234

## Update:
Add the ServerName 127.0.0.1 line to the end of the file:

/etc/httpd/conf/httpd.conf
. . .
# Supplemental configuration
#
# Load config files in the "/etc/httpd/conf.d" directory, if any.
IncludeOptional conf.d/*.conf
ServerName 127.0.0.1

Then:
- sudo apachectl configtest
- sudo systemctl reload httpd.service