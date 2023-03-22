#!/bin/bash

# create a repository to store the docker image in docker hub


# create a dockerfile

# build the docker image
sudo docker build -t hirodaridevdock/webappdemo:1.0-webapp .

# login to your docker hub account
# cat ~/my_password.txt | sudo docker login --username hirodaridevdock --password-stdin

# use the docker tag command to give the image a new name
# sudo docker tag <image-tag> <repository-name>

# push the image to your docker hub repository
# sudo docker push hirodaridevdock/webappdemo:1.0-webapp

# start the container to test the image
sudo docker run -dp 80:80 hirodaridevdock/webappdemo:1.0-webapp
