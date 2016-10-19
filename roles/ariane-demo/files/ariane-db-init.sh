#!/bin/sh

docker run -it --name mysqlcli --link ariane-dir:ariane-dir -v /tmp:/tmp mysql sh -c "exec mysql -h
 ariane-dir -P 3306 -uariane -ppassword < /tmp/ariane-dir.sql"
