#/bin/bash
mkdir config/cert
openssl req -newkey rsa:2048 -nodes -keyout config/cert/kibana.key -x509 -days 365 -out config/cert/kibana.crt -subj "/C=GT/ST=GT/L=GT/O=CS/OU=BT CN=demo.com"
chown -R root.kibana config/cert && chmod 640 config/cert/kibana.key