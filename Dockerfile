FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://vagrantcloud.com/debian/boxes/buster64/versions/10.4.0/providers/libvirt.box /opt/download_file
