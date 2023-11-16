#!/bin/bash

IMAGES=(ubuntu debian centos fedora archlinux)
IMAGES=(ubuntu)
for image in "${IMAGES[@]}"; do
  docker build -t gitian_builder --build-arg IMAGE=${image}:focal .
  docker run -it -v $(pwd):/app --rm gitian_builder
done
