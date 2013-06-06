#!/bin/bash
 
EXPECTED_ARGS=7
E_BADARGS=65
MYSQL=`which mysql`
DRUSH=`which drush`
DBUSER="$5"
DBPASS="$6"
VER='7.x'
 
U1="CREATE USER '$4'@'localhost' IDENTIFIED BY  '$4';"
U2="GRANT USAGE ON * . * TO '$4'@'localhost' IDENTIFIED BY '$4' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;"
Q1="CREATE DATABASE IF NOT EXISTS $4;"
Q2="GRANT ALL PRIVILEGES ON $4 . * TO  '$4'@'localhost'; "
Q3="FLUSH PRIVILEGES;"
SQL="${U1}${U2}${Q1}${Q2}${Q3}"
 
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 $1网站安装目录 $2网站管理员用户名 $3网站管理员密码 $4数据库名称 $5数据库用户名 $6数据库密码"
  exit $E_BADARGS
fi
 
$MYSQL -u"$DBUSER" -p"$DBPASS" -e "$SQL"

$DRUSH -v make drupal7_services.make -y "$1"

cd "$1"
$DRUSH site-install standard --db-url="mysql://$4:$4@localhost/$4" --site-name="drupal" --account-name="$2" --account-pass="$3" --account-mail="panjun.liu@verycloud.cn" --site-mail="panjun.liu@verycloud.cn" --locale="zh-hans" --yes
