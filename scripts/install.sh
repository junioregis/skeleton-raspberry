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

# Clean System

sudo apt-get autoremove
sudo apt-get clean