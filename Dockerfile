FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://releases.hashicorp.com/vault/1.5.4/vault_1.5.4_linux_arm.zip /opt/download_file
