FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://download.sonatype.com/nexus/3/latest-unix.tar.gz /opt/download_file
