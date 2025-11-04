#!/usr/bin/env bash
# Simple script to install NGINX and show a basic page

set -e

sudo apt-get update -y
sudo apt-get install -y nginx

sudo systemctl enable nginx
sudo systemctl start nginx

echo "Hello from CloudTopia CI/CD demo!" | sudo tee /var/www/html/index.html
