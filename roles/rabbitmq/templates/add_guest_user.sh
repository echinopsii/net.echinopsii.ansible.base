#!/bin/bash

ret=-1
i=0
while [ $ret -ne 0 ]
do
	curl --user admin:admin -H "Content-Type: application/json" -X PUT -d '{"password":"guest","tags":"None"}' http://{{ansible_fqdn}}:15672/api/users/guest
	ret=$?
	if [[ $i -lt 15 ]] && [[ $ret -ne 0 ]]; then
		sleep 2
		(( i++ ))
	else
		break;
	fi
done

if [[ $ret -eq 0 ]]; then
	curl --user admin:admin -H "Content-Type: application/json" -X PUT -d '{"configure":".*","write":".*","read":".*"}' http://{{ansible_fqdn}}:15672/api/permissions/%2F/guest
fi
