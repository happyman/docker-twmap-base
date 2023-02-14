# docker-twmap-base
twmap base env


build for amd64 and arm64
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=--
docker buildx create --name mybuilder
docker buildx use mybuilder

docker buildx build --platform linux/aarch64,linux/amd64 -t happyman/docker-twmap-base:v2.1 --push .

cd ../docker-twmap-cli
docker buildx build --platform  linux/aarch64,linux/amd64 -t happyman/docker-twmap-cli:v2.1 --push .

