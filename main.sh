#!/usr/bin/env bash

set -x

url=$1
version=$2

# change url
sed -i "/ADD/s| .* | ${url} |" Dockerfile

# log url and version
echo "\* ${url}[$version]" >> readme.adoc

# commit
git add Dockerfile readme.adoc
git commit Dockerfile readme.adoc -m "Add ${version}"
git tag "release-v${version}"

# push
git push
git push origin "release-v${version}"

# pull image
until docker pull "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}"
do
  echo 'Try pull image...'
  sleep 10
done

# extract file
docker run --user $(id -u):$(id -g) --rm --detach --volume ./:/mnt "registry.cn-beijing.aliyuncs.com/radix10/downloader:${version}"
