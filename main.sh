#!/usr/bin/env bash

set -x

url=$1
filename=$2
version=$(git tag -l | sort -t. -k3 -n | awk -F 'v' 'END{print $2}' | awk -F '.' '{print $1 "." $2 "." $3 + 1}')

# change url and log
sed -i "/ADD/s| .* | ${url} |" Dockerfile
echo "* ${url}[$version]" >> readme.adoc

# commit and push
proxychains git add Dockerfile readme.adoc
proxychains git commit Dockerfile readme.adoc -m "Add ${version}"
proxychains git tag "release-v${version}"
proxychains git push origin "release-v${version}"

# pull image and extract file
until docker pull "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}"
do
  echo 'Try pull image...'
  sleep 30
done

docker run --rm --detach --volume $PWD:/mnt "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}" \
	sh -c "mv /opt/download_file /mnt/download_file && chown $(id -u):$(id -g) /mnt/download_file"

mv download_file $filename
