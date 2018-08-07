#!/usr/bin/env bash

echo "mkdir -p ~/vim-tmp"
mkdir -p ~/vim-tmp

echo "sudo yum -y update"
sudo yum -y update

echo "sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm"
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

echo "sudo yum -y install git make cmake unzip wget curl vim"
sudo yum -y install unzip wget curl vim

echo "sudo yum -y install libreoffice kolourpaint grub-customizer"
sudo yum -y install libreoffice kolourpaint grub-customizer
