#!/usr/bin/env bash

set -exuo pipefail

url=$1
filename=$2
version=$(git tag -l | sort -t. -k3 -n | awk -F 'v' 'END{print $2}' | awk -F '.' '{print $1 "." $2 "." $3 + 1}')

# change dockerfile and log
sed -i "/ADD/s| .* | ${url} |" Dockerfile
echo "* ${url}[$version]" >> readme.adoc

# commit and push
proxychains -q git add Dockerfile readme.adoc
proxychains -q git commit Dockerfile readme.adoc -m "Add ${version}"
proxychains -q git tag "release-v${version}"
proxychains -q git push origin "release-v${version}"

# try to pull image
while true; do
  echo 'Try to pull image...'
  docker pull "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}" && break
  sleep 30
done

# copy file
docker run --rm \
	--detach \
	--volume $PWD:/mnt "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}" \
	sh -c "chown $(id -u):$(id -g) /opt/download_file && mv /opt/download_file /mnt/$filename"
