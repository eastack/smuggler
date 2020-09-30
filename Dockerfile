FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://dl.k8s.io/v1.18.9/kubernetes-server-linux-amd64.tar.gz /opt/download_file
