#!/bin/sh
curl -i -H "Content-Type: application/json" -X POST -d @/tmp/rabbitmq_clu_name.json http://localhost:5000/api/0.1/connect
