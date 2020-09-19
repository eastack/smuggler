FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://upload.wikimedia.org/wikipedia/en/1/19/Role-based_access_control.jpg /opt/download_file

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
