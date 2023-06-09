#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/mesutoezdil/Capstone-Project-Blog-Page-App--Django--on-AWS-Environment
cd /home/ubuntu/Capstone-Project-Blog-Page-App-(Django)-on-AWS-Environment
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Capstone-Project-Blog-Page-App-(Django)-on-AWS-Environment/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80