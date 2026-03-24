#!/bin/bash

mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld

mysqld --user=mysql &
sleep 5

mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';"
mariadb -e "CREATE DATABASE IF NOT EXISTS \`${DATABASE_NAME}\`;"
mariadb -e "CREATE USER IF NOT EXISTS '${DATABASE_USER}'@'%' IDENTIFIED BY '${DATABASE_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON \`${DATABASE_NAME}\`.* TO '${DATABASE_USER}'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

mysqladmin shutdown

exec mysqld --user=mysql