#!/bin/sh

sudo apt update -y
sudo apt install nginx -y
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt install python3-certbot-nginx -y

sudo mkdir -p /var/www/paiakshay.me/html
cp default /etc/nginx/sites-available/paiakshay.me
sudo ln -s /etc/nginx/sites-available/paiakshay.me /etc/nginx/sites-enabled/

sudo certbot --nginx -d paiakshay.me -d www.paiakshay.me
cp ../index.html /var/www/paiakshay.me/html/
cp -r ../assets /var/www/paiakshay.me/html/
cp -r ../static /var/www/paiakshay.me/html
sudo chmod -R 755 /var/www/paiakshay.me
