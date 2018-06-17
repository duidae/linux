# source
Basic source for vim, shell, ...etc

#### git
* $ git config --global user.name "duidae"
* $ git config --global user.email "duidae@gmail.com"
* $ git clone https://github.com/duidae/source.git

#### install Linux OS
* [RHEL suggestion](https://access.redhat.com/documentation/zh-tw/red_hat_enterprise_linux/7/html/installation_guide/sect-disk-partitioning-setup-x86#sect-recommended-partitioning-scheme-x86)
* / 10G
* /boot 500MB
* /swap 兩倍記憶體大小
* /home whatever you need

#### 軟體安裝位置
* /opt: optional, 不需要時可刪掉
* /usr/local: 手動安裝, 不影響package manager
* /usr: package manager裝的地方

#### CentOS
* hibernate
  * $ systemctl hibernate

#### GUI: grub-customizer
* CentOS/RHEL
  * $ yum install grub-customizer
* Ubuntu
  * sudo add-apt-repository ppa:danielrichter2007/grub-customizer
  * sudo apt-get update
  * sudo apt-get install grub-customizer
