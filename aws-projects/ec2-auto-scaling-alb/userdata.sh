#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Welcome to Aashish's Auto Scaling EC2 instance!" > /var/www/html/index.html

