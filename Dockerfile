FROM ubuntu:22.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends rsync
RUN apt-get clean autoclean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

COPY rsyncd.conf /etc/rsyncd.conf
COPY entrypoint.sh /var/entrypoint.sh
COPY VERSION.txt /var/VERSION.txt

RUN mkdir /var/synoback
RUN chmod +x /var/entrypoint.sh

ENTRYPOINT ["/bin/bash", "/var/entrypoint.sh"]
