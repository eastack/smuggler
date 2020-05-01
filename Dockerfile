FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD https://storage.googleapis.com/etcd/v3.4.7/etcd-v3.4.7-linux-amd64.tar.gz /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
