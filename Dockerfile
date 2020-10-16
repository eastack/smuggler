FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://dl.k8s.io/v1.18.10/kubernetes-node-linux-amd64.tar.gz /opt/download_file
