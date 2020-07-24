FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD https://www.charlesproxy.com/assets/release/4.5.6/charles-proxy-4.5.6.dmg /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
