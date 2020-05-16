FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD https://github.com/denoland/deno/releases/download/v1.0.0/deno-x86_64-unknown-linux-gnu.zip /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
