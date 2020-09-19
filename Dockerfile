FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD teststs /opt/download_file

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
