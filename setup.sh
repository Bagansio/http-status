#!/bin/bash

#install dependencies
sudo apt update -y
sudo apt install pip -y
sudo apt install git -y 

#clone repro
sudo git clone https://github.com/Bagansio/http-status.git

#setup server
sudo cd http-status
sudo apt install gunicorn
sudo pip install -r requirements.txt

#setup startup_script
sudo cp startup_script /home/root/

#run server on port 80
sudo gunicorn --bind :80 main:app