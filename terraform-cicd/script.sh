#!/bin/bash

# Update the package lists
sudo apt-get update

# Install pip and Ansible
sudo apt-get install -y python3-pip
sudo pip3 install ansible

# Install Apache
#sudo apt-get install -y apache2

# Start and enable Apache
#sudo systemctl start apache2
#sudo systemctl enable apache2

