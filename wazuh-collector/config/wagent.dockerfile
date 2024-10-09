FROM ubuntu:22.04

RUN apt --fix-broken install lsb-release -y

COPY ./bins/ /t3mp/wazuh-agent/
RUN dpkg -i /t3mp/wazuh-agent/wazuh-agent.deb

ENTRYPOINT ["tail", "-f", "/dev/null"]
