#!/bin/bash
cd /opt/fleet/elastic-agent-t3mp
./elastic-agent install \
  --fleet-server-es=https://elasticsearch:9200 \
  --fleet-server-es-insecure \
  --fleet-server-service-token=<FLEET_TOKEN> \
  --fleet-server-policy=fleet-server-policy \
  --fleet-server-port=8220 -n