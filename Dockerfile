FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://github.com/cloudflare/cfssl/releases/download/v1.5.0/cfssl_1.5.0_linux_amd64 /opt/download_file
