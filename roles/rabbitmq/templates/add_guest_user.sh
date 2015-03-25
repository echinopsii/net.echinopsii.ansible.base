#!/bin/sh

curl --user admin:admin -H "Content-Type: application/json" -X PUT -d '{"password":"guest","tags":"None"}' http://{{ansible_eth0.ipv4.address}}:15672/api/users/guest

curl --user admin:admin -H "Content-Type: application/json" -X PUT -d '{"configure":".*","write":".*","read":".*"}' http://{{ansible_eth0.ipv4.address}}:15672/api/permissions/%2F/guest
