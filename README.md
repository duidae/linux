# Notes for Linux

## Install Linux
* [RHEL suggestion](https://access.redhat.com/documentation/zh-tw/red_hat_enterprise_linux/7/html/installation_guide/sect-disk-partitioning-setup-x86#sect-recommended-partitioning-scheme-x86)
* / 10G
* /boot 500MB
* swap 兩倍記憶體大小
* /home whatever you need
* 新手切/, swap就好

## Installing CentOS, RHEL
* find usb device
  * $ lsblk
* format usb to FAT32
  * $ mkdosfs -F 32 -I /dev/sdb
* write ISO to usb
  * $ dd if=/home/testuser/Downloads/rhel-server-7.0x86_64-boot.iso of=/dev/sdb status=progress
  * $ ~watch -n 5 killall -USR1 dd //check dd progress~
* usb不能用太爛的...雜牌的dd copy不進去/copy進去裝不起來...創見的就都ok裝的起來...what the hell??

## Grub GUI: grub-customizer
* CentOS 7
  * $ sudo yum install grub-customizer
* Ubuntu
  * sudo add-apt-repository ppa:danielrichter2007/grub-customizer
  * sudo apt-get update
  * sudo apt-get install grub-customizer
  
## ADSL(pppoe) on Linux
* CentOS 7 / RHEL 7
  * http://blog.kevinlinul.idv.tw/?p=174
  * http://www.bos.tw/2016/09/centos-%E6%88%96%E6%98%AF-redhat-%E7%B3%BB%E7%9A%84linux-adsl%E6%88%96pppoe-%E7%9A%84%E6%92%A5%E8%99%9F%E8%A8%AD%E5%AE%9A/
  * $ ifconfig
  * Hinet DNS: 168.95.1.1
* Ubuntu 18.04 LTS
  * $ systemctl stop NetworkManager.service
  * $ systemctl disable NetworkManager.service
  * $ pppoeconf

## Google Chrome
* CentOS 7/RHEL 7
  * $ sudo vi /etc/yum.repos.d/google-chrome.repo
```
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
```
  * $ sudo yum install google-chrome-stable
* Ubuntu
  * 直接連網頁裝
  
## 軟體安裝位置
* /opt: optional, 不需要時可刪掉
* /usr/local: 手動安裝, 不影響package manager
* /usr: package manager裝的地方

## Git
* $ git config --global user.name "duidae"
* $ git config --global user.email "duidae@gmail.com"
* $ git clone https://github.com/duidae/source.git

## Shell
* [> /dev/null 2>&1](http://ibookmen.blogspot.com/2010/11/unix-2.html)

## Tool for trace code
* Eclipse
* C/C++ Global
  * $ sudo apt install global
  * http://blog.xuite.net/jesonchung/scienceview/93560500-Trace+code+tool
* doxygen
* $ grep -rn [string]

## 我的軟體 
* $ sudo yum install -y libreoffice
* $ sudo yum install -y kolourpaint 
* [TODO] 寫一個我自己的安裝script好了... installMySW.sh
  * office: libreoffice
  * 小畫家: kolourpaint
  * git
  * build-essentials
  * chrome

## Commands
* hibernate
  * $ systemctl hibernate


- [X] 23.6. 重新編譯 World
- [ ] 13. 安全性
