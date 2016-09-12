docker exec -i database mysql -uroot -proot -e "CREATE DATABASE KONFIO"
docker exec -i database mysql -uroot -proot -e "CREATE USER 'pako_padilla'@'%'"
docker exec -i database mysql -uroot -proot -e "GRANT ALL ON *.* TO 'pako_padilla'@'%'"
docker exec -i database mysql -uroot -proot -e "CREATE USER 'enrique_padilla'@'%'"
docker exec -i database mysql -uroot -proot -e "GRANT ALL ON *.* TO 'enrique_padilla'@'%'"
docker exec -i database mysql -uroot -proot -e "CREATE USER 'sys_algorithms'@'%'"
docker exec -i database mysql -uroot -proot -e "GRANT ALL ON *.* TO 'sys_algorithms'@'%'"
docker exec -i database mysql -uroot -proot KONFIO < ../backup.sql