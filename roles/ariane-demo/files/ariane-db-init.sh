#!/bin/sh

docker run --name mysqlcli-idm --link ariane-idm:ariane-idm -v /tmp:/tmp mysql sh -c "exec mysql -h ariane-idm -P 3306 -uariane -ppassword < /tmp/ariane-idm.sql"

docker run --name mysqlcli-dir --link ariane-dir:ariane-dir -v /tmp:/tmp mysql sh -c "exec mysql -h ariane-dir -P 3306 -uariane -ppassword < /tmp/ariane-dir.sql"

