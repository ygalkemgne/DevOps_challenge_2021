#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo systemctl enable docker
docker pull nginx
docker run -itd --name=challenge -p 80:80 nginx
