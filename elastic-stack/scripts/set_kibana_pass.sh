#!/bin/bash
curl -k -s -XPOST https://localhost:9200/_security/user/kibana_system/_password  \
  -u elastic:${ELASTIC_PASSWORD} \
  -H "Content-Type: application/json" \
  -d "{\"password\":\"${KIBANA_PASSWORD}\"}";