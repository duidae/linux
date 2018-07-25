# Notes for Linux

## Install Linux
* [RHEL suggestion](https://access.redhat.com/documentation/zh-tw/red_hat_enterprise_linux/7/html/installation_guide/sect-disk-partitioning-setup-x86#sect-recommended-partitioning-scheme-x86)
* / 10G
* /boot 500MB
* swap 兩倍記憶體大小
* /home whatever you need
* 新手切/, swap就好

## Installing Ubuntu, CentOS, RHEL with USB
* find usb device
  * $ lsblk
* format usb to FAT32
  * $ mkdosfs -F 32 -I /dev/sdb
* write ISO to usb
  * $ dd if=/home/testuser/Downloads/rhel-server-7.0x86_64-boot.iso of=/dev/sdb status=progress
  * $ ~watch -n 5 killall -USR1 dd //check dd progress~
* usb不能用太爛的...雜牌的dd copy不進去/copy進去裝不起來...創見的就都ok裝的起來...what the hell??

## CentOS repo & yum
* epel repo
  * $ sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
  * https://www.brilliantcode.net/108/centos-7-install-epel-repository/
* yum 
  * $ sudo yum -y update
  * $ sudo yum -y install [app]
  * $ sudo yum remove [app name] // 移除軟體
  * $ sudo yum info gcc // get info of app
* 裝rpm
  * $ sudo yum install code-1.25.0-1530796575.el7.x86_64.rpm

## 軟體
* necessary: git, office, 小畫家, grub customizer
  * $ sudo yum install -y git, libreoffice, kolourpaint, grub-customizer
 * grub-customizer @ Ubuntu
    * $ sudo add-apt-repository ppa:danielrichter2007/grub-customizer
    * $ sudo apt-get update
    * $ sudo apt-get install grub-customizer
* build-essentials
* Development Tools @ CentOS
  * $ sudo yum groupinstall -y 'Development Tools'
  
## Google Chrome
* CentOS 7/RHEL 7
  * 1. 連官網下載rpm
    * sudo yum install -y [rpm]
  * 2. $ sudo vi /etc/yum.repos.d/google-chrome.repo // 這個repo裡有寫好的, 直接clone下來即可
    * $ sudo yum install -y google-chrome-stable
* Ubuntu
  * 直接連官網裝
  
## 軟體安裝位置
* /usr: package manager裝的地方
* /usr/local: 手動安裝, 不影響package manager, 不要時直接刪掉整個folder+移除PATH即可
  * 裝時記得 --prefix=/usr/local/[appname+version]
* /opt: optional, 不需要時可刪掉

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
* 看版本
  * $ cat /etc/centos-release

## Environment
* $ export PATH=/usr/local/Cellar/qt/4.8.7_3/bin:$PATH 

## 權限
* $ sudo ls -l // 看owner
* $ sudo chown -R duidae [dir/file] // 改目錄或檔案的owner
  
## Tool for trace code
* VS code
* Eclipse
* C/C++ Global
  * $ sudo apt install global
  * http://blog.xuite.net/jesonchung/scienceview/93560500-Trace+code+tool
* doxygen

## 疑難雜症
* [cannot-find-lxxx, library沒裝](http://i-pogo.blogspot.com/2010/01/usrbinld-cannot-find-lxxx.html)
* 若缺甚麼library
  * $ yum whatprovides libstdc++.so.6
* 'GLIBCXX_3.4.20' not found
  * $ strings  /usr/lib64/libstdc++.so.6 | grep GLIBCXX
* upgrade gcc tool chain
  * https://www.softwarecollections.org/en/scls/rhscl/devtoolset-4/
  * scl enable devtoolset-6 bash只是临时覆盖系统原有的GCC引用，如果想永久覆盖，可在root/.bashrc文件中添加source /opt/rh/devtoolset-6/enable
  ```
  sudo yum install centos-release-scl
  sudo yum install devtoolset-6
  scl enable devtoolset-6 bash
  sudo yum list devtoolset-6\*
  ```

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

## Commands
* hibernate
  * $ systemctl hibernate
* $ grep -irn [string]
* $ find . -name "*.png"
