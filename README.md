# Notes for Linux

## Shell
* "> /dev/null 2>&1"
  * http://ibookmen.blogspot.com/2010/11/unix-2.html
  * 0: 標準輸入 (stdin)
  * 1: 標準輸出 (stdout)
  * 2: 標準錯誤輸出 (stderr)
  * 2(stderr) > &1 (stdout), 如果寫成 2>1 就會變成輸出到"1"這個檔案
  * 重新導向的順序是由左至右。也就是說「>/dev/null 2>&1」會先處理「>/dev/null」再處理「2>&1」。用「2>&1 >/dev/null」並不會將 stderr 導到 /dev/null。
* $ uname -s  // print kernel name
  * Linux

## Github
* $ git config --global user.name "duidae"
* $ git config --global user.email "duidae@gmail.com"
* $ git clone https://github.com/duidae/source.git
* pull request https://gitbook.tw/chapters/github/pull-request.html
* check out specific branch
  * $ git clone -b mark/newArch-testProtoBuf https://github.com/duidae/carta.git CARTAvis
* remove directory
  * $ git rm -r one-of-the-directories
  * $ git commit -m "Remove directory"
  * $ git push

## Environment
* $ export PATH=/usr/local/Cellar/qt/4.8.7_3/bin:$PATH 

## Tool for trace code
* Eclipse
* C/C++ Global
  * $ sudo apt install global
  * http://blog.xuite.net/jesonchung/scienceview/93560500-Trace+code+tool
* doxygen
* $ grep -rn [string]
* $ find . -name "*.png"

## 疑難雜症
* [cannot-find-lxxx, library沒裝](http://i-pogo.blogspot.com/2010/01/usrbinld-cannot-find-lxxx.html)

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
  * $ sudo /sbin/ifup ppp0
* Ubuntu 18.04 LTS
  * $ systemctl stop NetworkManager.service
  * $ systemctl disable NetworkManager.service
  * $ pppoeconf

## Print列印
* CentOS 7
  * 防火牆會擋印表機...要先去 [應用程式]->[雜項]->[列印設定值],按新增會有程序自動解除
  * 需要/usr/lib/cups/filter/hpps
    * 缺HPLIP PostScript Finishing Filter
    * $ sudo yum install hplip
    * $ system-config-printer

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
