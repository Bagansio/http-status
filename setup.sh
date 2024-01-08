#!/bin/bash

#install dependencies
sudo apt update -y
sudo apt install python3 pip git -y

#clone repro
sudo git clone https://github.com/Bagansio/http-status.git /opt/http-status

#setup server
sudo apt install gunicorn -y
sudo pip install -r /opt/http-status/requirements.txt

#run server on port 80
sudo gunicorn --bind :80 --chdir /opt/http-status/src main:app