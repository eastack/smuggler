FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://github.com/istio/istio/releases/download/1.7.2/istio-1.7.2-linux-amd64.tar.gz /opt/download_file

RUN chmod 644 /opt/download_file

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
