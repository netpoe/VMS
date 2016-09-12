```sql
docker exec -i database mysql -uroot -proot -e "CREATE DATABASE KONFIO"
```
```sql
docker exec -i database mysql -uroot -proot -e "CREATE USER 'pako_padilla'@'%'"
```
```sql
docker exec -i database mysql -uroot -proot -e "GRANT ALL ON *.* TO 'pako_padilla'@'%'"
```
```sql
docker exec -i database mysql -uroot -proot -e "CREATE USER 'enrique_padilla'@'%'"
```
```sql
docker exec -i database mysql -uroot -proot -e "GRANT ALL ON *.* TO 'enrique_padilla'@'%'"
```
```sql
docker exec -i database mysql -uroot -proot -e "CREATE USER 'sys_algorithms'@'%'"
```
```sql
docker exec -i database mysql -uroot -proot -e "GRANT ALL ON *.* TO 'sys_algorithms'@'%'"
```
```sql
docker exec -i database mysql -uroot -proot KONFIO < ../backup.sql
```