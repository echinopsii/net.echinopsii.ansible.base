#!/bin/sh
curl -i -H "Content-Type: application/json" -X POST -d @/tmp/rabbitmq_clu_nodes.json http://localhost:5000/api/0.1/setUpHosts
