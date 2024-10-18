# elastic-docker-bundle
elastic stack

- 1: `cp .env-example .env` (fill it)
- 2: `echo 'vm.max_map_count = 262144' >> /etc/sysctl.conf; sudo sysctl -p`
- 3: `docker compose up -d --build`
- 4: 
```sh
docker exec elasticsearch bash /t3mp/scripts/set_kibana_pass.sh
docker exec kibana bash /t3mp/scripts/set_kibana_keystore.sh
docker exec kibana bash /t3mp/scripts/create_kibana_ssl.sh
# optional
# change <FLEET_TOKEN> on ./scripts/install_fleet_agent.sh
docker exec fleet bash /t3mp/scripts/install_fleet_agent.sh
```
- 5: kibana conf > `/var/lib/docker/volumes/kibana_etc/_data/kibana.yml` -> [ref](https://www.elastic.co/guide/en/kibana/current/settings.html)
