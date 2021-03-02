FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://storage.googleapis.com/skaffold/releases/v1.20.0/skaffold-windows-amd64.exe /opt/download_file
