FROM zixia/wechat

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD https://algs4.cs.princeton.edu/11model/largeAllowlist.txt /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
