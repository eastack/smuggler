FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://apt.releases.hashicorp.com/pool/amd64/main/vault_1.5.5_amd64.deb /opt/download_file
