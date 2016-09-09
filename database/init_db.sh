#!/bin/bash
UP=$(pgrep mysql | wc -l);

if [ "$UP" -ne 1 ];
then
  service mysql start
else
	echo 'ok'
fi

mysql -uroot -proot -e "CREATE DATABASE KONFIO"
mysql -uroot -proot -e "CREATE USER 'pako_padilla'@'%'"
mysql -uroot -proot -e "GRANT ALL ON *.* TO 'pako_padilla'@'%'"
mysql -uroot -proot -e "CREATE USER 'enrique_padilla'@'%'"
mysql -uroot -proot -e "GRANT ALL ON *.* TO 'enrique_padilla'@'%'"