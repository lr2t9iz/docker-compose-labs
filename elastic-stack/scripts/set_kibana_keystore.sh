#!/bin/bash
/usr/share/kibana/bin/kibana-keystore create
echo ${KIBANA_PASSWORD} | /usr/share/kibana/bin/kibana-keystore add elasticsearch.password -x