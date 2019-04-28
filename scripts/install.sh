#!/bin/bash

TIMEZONE=America/Sao_Paulo

# Timezone

sudo ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime
sudo sh -c "echo ${TIMEZONE} > /etc/timezone"

# Essentials

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
  build-essential \
  curl \
  git \
  nano \
  ufw \
  unzip \
  zip

# Firewall

sudo ufw --force reset
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw default deny
sudo ufw --force enable

# Python PIP

sudo apt-get -y install python-pip libffi-dev
sudo python -m pip install --upgrade --force setuptools
sudo python -m pip install --upgrade --force pip

# Docker

curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
sudo systemctl enable docker

# Docker Compose

sudo pip install docker-compose

# Swap Memory

if [ -f /etc/dphys-swapfile ]; then
  sudo sed -i 's/^CONF_SWAPSIZE=[0-9]*$/CONF_SWAPSIZE=1024/' /etc/dphys-swapfile
fi

# Clean System

sudo apt-get autoremove
sudo apt-get clean
sudo reboot