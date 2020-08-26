FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD  https://vagrantcloud.com/centos/boxes/8/versions/1905.1/providers/virtualbox.box /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
