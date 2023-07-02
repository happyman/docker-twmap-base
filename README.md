# docker-twmap-base


twmap base env, used by docker-twmap-cli

check Dockerfile for required packages.

```
build for amd64 and arm64
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=--
docker buildx create --name mybuilder
docker buildx use mybuilder

docker buildx build --platform linux/aarch64,linux/amd64 -t happyman/docker-twmap-base:latest --push .

cd ../docker-twmap-cli
docker buildx build --platform  linux/aarch64,linux/amd64 -t happyman/docker-twmap-cli:latest --push .
```
