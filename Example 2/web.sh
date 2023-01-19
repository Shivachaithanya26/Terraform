#!/bin/bash
sudo yum install httpd -y
sudo yum install git -y
sudo systemctl enable httpd
sudo git clone https://github.com/florient2016/myweb.git /var/www/html/web/
sudo systemctl start httpd