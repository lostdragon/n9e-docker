#!/usr/bin/env bash

mysql_root_password=${MYSQL_ROOT_PASSWORD:-1234}

if [ "$mysql_root_password" != "1234" ]; then
  sed -i "s/1234/$mysql_root_password/g" etc/mysql.yml
fi

./control start all
sleep infinity