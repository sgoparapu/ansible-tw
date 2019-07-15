#!/bin/bash
sudo hostnamectl set-hostname web.tw
sudo amazon-linux-extras install ansible2
sudo yum install git -y
git clone https://github.com/sgoparapu/ansible-tw.git
cd /home/ec2-user/ansible-tw
sudo ansible-playbook -l localhost httpd.yml
sudo cp /home/ec2-user/ansible-tw/index.html /var/www/html/
