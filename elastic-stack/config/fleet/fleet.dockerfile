ARG STACK_VERSION

FROM ubuntu:22.04

RUN apt update -y
RUN apt install curl -y
RUN apt install tar -y
RUN mkdir /opt/fleet/

RUN cd /opt/fleet && curl -L -O https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-${STACK_VERSION}-linux-x86_64.tar.gz
RUN cd /opt/fleet && tar xzvf elastic-agent-${STACK_VERSION}-linux-x86_64.tar.gz
RUN apt install tree -y
RUN cd /opt/fleet && mv elastic-agent-${STACK_VERSION}-linux-x86_64 elastic-agent-t3mp

ENTRYPOINT ["tail", "-f", "/dev/null"]
