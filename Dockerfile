FROM --platform=linux/amd64 ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends rsync
RUN apt-get clean autoclean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

COPY rsyncd.conf /etc/rsyncd.conf
COPY entrypoint.sh /var/entrypoint.sh
COPY VERSION.txt /var/VERSION.txt

ENTRYPOINT [ "/var/entrypoint.sh" ]
