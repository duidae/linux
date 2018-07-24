#!/usr/bin/env bash

echo "sudo yum -y update"
sudo yum -y update

echo "sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm"
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

echo "sudo yum -y install git make cmake unzip wget curl"
sudo yum -y install git make cmake unzip wget curl

echo "sudo yum -y install libreoffice kolourpaint grub-customizer"
sudo yum -y install libreoffice kolourpaint grub-customizer
