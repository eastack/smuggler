FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD  https://vagrantcloud.com/debian/boxes/buster64/versions/10.4.0/providers/libvirt.box /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
