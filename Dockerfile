FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://github.com/claudiodangelis/qrcp/releases/download/0.6.4/qrcp_0.6.4_linux_arm64.tar.gz /opt/download_file

RUN chmod 644 /opt/download_file

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
