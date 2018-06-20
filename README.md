# Notes for Linux

## Install Linux
* [RHEL suggestion](https://access.redhat.com/documentation/zh-tw/red_hat_enterprise_linux/7/html/installation_guide/sect-disk-partitioning-setup-x86#sect-recommended-partitioning-scheme-x86)
* / 10G
* /boot 500MB
* swap 兩倍記憶體大小
* /home whatever you need
* 新手切/, swap就好

## Grub GUI: grub-customizer
* CentOS 7
  * $ yum install grub-customizer
* Ubuntu
  * sudo add-apt-repository ppa:danielrichter2007/grub-customizer
  * sudo apt-get update
  * sudo apt-get install grub-customizer
  
## ADSL(pppoe) on Linux
* CentOS 7 / RHEL 7
  * http://blog.kevinlinul.idv.tw/?p=174
  * http://www.bos.tw/2016/09/centos-%E6%88%96%E6%98%AF-redhat-%E7%B3%BB%E7%9A%84linux-adsl%E6%88%96pppoe-%E7%9A%84%E6%92%A5%E8%99%9F%E8%A8%AD%E5%AE%9A/
  * $ ifconfig
  * DNS: 168.95.1.1
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
  * $ yum install google-chrome-stable
  
## 軟體安裝位置
* /opt: optional, 不需要時可刪掉
* /usr/local: 手動安裝, 不影響package manager
* /usr: package manager裝的地方

## Git
* $ git config --global user.name "duidae"
* $ git config --global user.email "duidae@gmail.com"
* $ git clone https://github.com/duidae/source.git

## Tool for trace code
* Eclipse
* C/C++ Global
  * $ sudo apt install global
  * http://blog.xuite.net/jesonchung/scienceview/93560500-Trace+code+tool
* doxygen

## Commands
* hibernate
  * $ systemctl hibernate


- [X] 23.6. 重新編譯 World
- [ ] 13. 安全性
