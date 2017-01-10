#!/bin/sh
mkdir -p /var/run/mysqld

chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

if [ ! -f /var/lib/mysql/ibdata1 ]; then

    mysql_install_db --user=mysql --datadir="/var/lib/mysql"

    /usr/bin/mysqld_safe --defaults-file=/etc/mysql/my.cnf &
    sleep 10s

#    echo "GRANT ALL ON *.* TO ${DB_USER}@'%' IDENTIFIED BY '${DB_PASS}' WITH GRANT OPTION;GRANT ALL ON *.* TO ${DB_USER}@'localhost' IDENTIFIED BY '${DB_PASS}' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root --password=""
#     echo "GRANT ALL ON *.* TO ${DB_USER}@'localhost' IDENTIFIED BY '${DB_PASS}' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root --password=""

    killall mysqld
    killall mysqld_safe
    sleep 10s
    killall -9 mysqld
    killall -9 mysqld_safe
fi

mysqld_safe --user=mysql --datadir="/var/lib/mysql"
