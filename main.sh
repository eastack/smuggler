#!/usr/bin/env bash

set -x

url=$1
version=$2

# change url and log
sed -i "/ADD/s| .* | ${url} |" Dockerfile
echo "* ${url}[$version]" >> readme.adoc

# commit and push
git add Dockerfile readme.adoc
git commit Dockerfile readme.adoc -m "Add ${version}"
git tag "release-v${version}"
git push origin "release-v${version}"

# pull image and extract file
until docker pull "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}"
do
  echo 'Try pull image...'
  sleep 10
done
docker run --user $(id -u):$(id -g) --rm --detach --volume $PWD:/mnt "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}"
