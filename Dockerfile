FROM alpine

LABEL MAINTAINERS="Radix10 <admin@radix10.me>"

COPY entrypoint.sh /entrypoint.sh

ADD  https://github-production-release-asset-2e65be.s3.amazonaws.com/50613991/d6b52400-d673-11ea-8dbb-c94caa7707b9?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20200905%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20200905T083042Z&X-Amz-Expires=300&X-Amz-Signature=4750b4b36f658c331b241d20451b1c59ca74d2f8b69ab4386a41c32cde3e55d4&X-Amz-SignedHeaders=host&actor_id=17524858&key_id=0&repo_id=50613991&response-content-disposition=attachment%3B%20filename%3Dharbor-offline-installer-v2.0.2.tgz&response-content-type=application%2Foctet-stream /downloaded_file

ENTRYPOINT ["/entrypoint.sh"]
