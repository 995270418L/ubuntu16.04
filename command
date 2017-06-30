-----------------------------------------

UBUNTU usage

----------------------------------------
sudo lsof -i :9000         # 查看9000端口的信息
netstat -anptl | grep ':8080'  #查看正在监听的8080端口

adduser liu                 # 增加用户

usermod -a -G sudo liu      #将用户liu添加到sudo权限组

sudp dpkg-reconfigure tzdata   #更改时区(GMT+8.0)中国

sudo service nginx start     #start nginx

sudo service nginx reload    #reload nginx

systemctl status             #your computer status

nginx -t -c /etc/nginx/nginx.conf   #test the nginx configure file

rfkill list all              #list all wlan device message

rfkill unblocked all         #unblocked all devices

sudo service network-manager restart   #restart the network managun 

in eclipse Windows——>Preferences——>Java-->Editor-->Content Asist，在Auto activation triggers for Java后面的文本框里只有一个“.”。现在你将其改为“.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ”即可.然后就可以使用 alt+"/" 自动补全功能了

sudo systemctl restart NetworkManager

uoop  #this command can fast control CPU Running statement

axel -n 4 url   ###开启四线程下载文件 速度超快

sudo fdisk -l 来查看所有的硬盘情况(包括分区的还有未分区的，而df -h 则不能看出未分区的)

sudo fdisk 磁盘文件(/dev/vdb.....)　表示对该磁盘分区　
命令格式：p,创建主分区，n，新建一个新分区(共有４个分区,３个主分区,１个扩展分区)
		d,删除一个分区，q,退出分区不保存，wq,把分区写入分区表，保存并退出.
		: sudo fdisk /dev/vdb

分区完后还要格式化才能使用:
     sudo mkfs -t 磁盘格式(etx4,etx3,etx2) 分区(/dev/vdb1)　
	 : sudo mkfs -t ext4 /dev/vdb1

格式化后如果在ubuntu下次开机时自动挂载需要将挂载新分区:
     首先创建一个新目录 mkdir /home/username
	 然后　mount 分区名　:mount /dev/vdb1 /home/liu
	 最后将分区信息放入/etc/fstab文件中
	 　echo '/dev/vdb1 /home/liu ext4 defaults 0 0' >> /etc/fstab
	 记得改变文件权限　sudo chmod 777 /etc/fstab

lsof -i:[端口号] 可查看当前端口呗什么程序给占用了
eg:lsof -i:8080

ps -ef | grep [PID] 可查看指定进程在干什么
eg: ps -ef | grep 8080

kill -9 [端口号]　强制杀死该ID对应进程

gnome shell 需要使用shirt + ctrl + v 来替代ctrl + v进行复制的行为

#当python通过(ln -s)的命令强制升级时会出现apt的错误解决办法:
 sudo apt-get clean
 sudo apt-get update
 sudo apt-get install --reinstall python-minimal python-lockfile
这只是还原了而已，要想继续使用python3.5，可以选择在当前用户下创建一个python的别名:
    alias python = "/usr/bin/python3.x" 这样系统使用的还是python2.x，而当前用户可以使用python3.x

ubuntu下读取windows盘问题(挂载失败):
	首先需要创建一个盘符待挂载，一般都是/media/username/yy，yy指windows的盘符，
	使用命令 mount -t ntfs-3g /dev/sdax /me
	dia/username/yy -o force 若显示unsafe state，使用-ro替换-o 

sudo apt dist-upgrade    # 为系统上的软件升级

find / -name *s*         #find命令查找根目录下包含s的文件

ifconfig wlp2s0:0 192.169.1.1 netmask 255.255.0.0 up #设置电脑ip别名

--------------------------------------------------

SQL > MYSQL　usage

------------------------------------------------

create table name(...)default charset=utf8                         ###设定表的字符集

truncate table name;                             ###删除表中所有数据，并重置主键id

select * from name where id REGEXP '[0-9]*';    ###模糊匹配所有以数字结合在一起的id


mongod --fork --logpath ~/data/log/mongodb.log --dbpath ~/data/db  #后台启动mongod服务

------------------------------------------------

Maven command 

------------------------------------------------

archetypeCatalog : internal  在IDEA中新建maven项目的时候可以加快加载速度

---------------------------------------------

Server

--------------------------------------------
ip:123.207.145.161
netstat -n -p TCP | grep SYN_RECV   #检测服务器是否被syn(DDOS)攻击,原理是通过检测SYN_RECV的状态来决定的

nginx path prefix: "/usr/local/nginx"
nginx binary file: "/usr/local/nginx/sbin/nginx"
nginx modules path: "/usr/local/nginx/modules"
nginx configuration prefix: "/usr/local/nginx/conf"
nginx configuration file: "/usr/local/nginx/conf/nginx.conf"
nginx pid file: "/usr/local/nginx/logs/nginx.pid"
nginx error log file: "/usr/local/nginx/logs/error.log"
nginx http access log file: "/usr/local/nginx/logs/access.log"
nginx http client request body temporary files: "client_body_temp"
nginx http proxy temporary files: "proxy_temp"
nginx http fastcgi temporary files: "fastcgi_temp"
nginx http uwsgi temporary files: "uwsgi_temp"
nginx http scgi temporary files: "scgi_temp"

sudo apt-get autoremove --purge nginx nginx-common nginx-core && sudo rm -rf /var/www/html
   # 重新安装nginx时需要做的准备，否则会发生错误

sudo ldconfig        #shadowsocksr 启用chacha20加密支持
---------------------------------------------

Java Command

--------------------------------------------

1. javap -c [class文件名] 反编译class文件 eg: javap -c Singleton$

---------------------------------------------

Network command

----------------------------------------------

dig baidu.com   #可查询百度域名在DNS服务器上找寻ip地址的过程
dig @8.8.8.8 baidu.com  #指定谷歌的DNS服务器解析ip地址,还有一个是4.2.2.2
dig +trace baidu.com    #可一显示DNS的分级查询结果　root域名 -> 顶级域名　-> 二级域名 -> 主机名(三级域名)


--------------------------------------------------------------------------

IDEA usage

---------------------------------------------------------------------------

Ctrl + H  显示类结构图
Ctrl + Q  显示注释文档
Ctrl + Alt + Shift + T   弹出重构菜单
Alt + Delete  安全删除
Ctrl + Alt + N 内联
Ctrl + o  override方法

---------------------------------------------------------------------------

Git usage

---------------------------------------------------------------------------
git init   #初始化
git add . 　#全部添加
git commit -m " content"   #commit
git remote add origin git@github.com:995270418L/$repository_name    #添加远程仓库
git push -u origin master   # push local file into remote server 
touch .gitignore             #create .ignorefile

---------------------------------------------------------------------------

chrome usage

-----------------------------------------------------------------------------
ctrl+shift+t      #撤销已关闭网页
chrome://net-internals            #debug模式

--------------------------------------------------------------------------------

Shadowsocks 

--------------------------------------------------------------------------------

ssserver -c /配置文件地址 -d start
ssserver -c /配置文件地址 -d stop

-------------------------------------------------------------------------------

Node

-------------------------------------------------------------------------------

cnpm install   # 使用淘宝的cnpm 安装项目下的packge.json 中的node模块
cnpm i install module_name  --save-dev   # 安装开发模块 去掉--save-dev就不是dev模式的模块了

