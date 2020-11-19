FROM alpine:3

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

ADD https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz /opt/download_file
