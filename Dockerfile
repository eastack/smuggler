FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://github.com/kubernetes/kubernetes/releases/download/v1.18.9/kubernetes.tar.gz /opt/download_file

RUN chmod 644 /opt/download_file

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
