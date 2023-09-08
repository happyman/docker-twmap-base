#!/bin/bash
docker buildx build --platform linux/aarch64 -t happyman/docker-twmap-base:arm64-`cat VERSION` -t happyman/docker-twmap-base:arm64-latest --push .
