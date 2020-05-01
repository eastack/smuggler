FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD https://vagrantcloud.com/ubuntu/boxes/focal64/versions/20200430.0.0/providers/virtualbox.box /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
