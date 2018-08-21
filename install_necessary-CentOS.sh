#!/usr/bin/env bash

echo "Create vim temp directory..."
mkdir -p ~/vim-tmp

echo "Update yum..."
sudo yum -y update

echo "Install epel, scl repository..."
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install centos-release-scl

echo "Install necessary tools..."
sudo yum -y install unzip wget curl vim cloc 

echo "Install libreoffice kolourpaint grub-customizer..."
sudo yum -y install libreoffice kolourpaint grub-customizer
