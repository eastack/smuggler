FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://releases.hashicorp.com/vault/1.6.0/vault_1.6.0_linux_amd64.zip /opt/download_file
