#!/usr/bin/env bash

mysql_root_password=${MYSQL_ROOT_PASSWORD:-1234}

until mysql -hmysql -u root -p$mysql_root_password  -e ";" ; do
    echo "Can't connect mysql, retry"
    sleep 5
done

mysql -hmysql -uroot -p$mysql_root_password < sql/n9e_ams.sql
mysql -hmysql -uroot -p$mysql_root_password < sql/n9e_hbs.sql
mysql -hmysql -uroot -p$mysql_root_password < sql/n9e_job.sql
mysql -hmysql -uroot -p$mysql_root_password < sql/n9e_mon.sql
mysql -hmysql -uroot -p$mysql_root_password < sql/n9e_rdb.sql