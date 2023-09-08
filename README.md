# docker-twmap-base


twmap base env, used by docker-twmap-cli

check Dockerfile for required packages.


check build.sh (amd64)
      build-arm.sh (arm64)


```
build for amd64 and arm64
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=--
docker buildx create --name mybuilder
docker buildx use mybuilder

docker buildx build --platform linux/aarch64 -t happyman/docker-twmap-base:arm64-latest --push .

```
