FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://github.com/etcd-io/etcd/releases/download/v3.3.25/etcd-v3.3.25-linux-amd64.tar.gz /opt/download_file
