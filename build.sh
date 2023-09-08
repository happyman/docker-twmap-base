tag=happyman/docker-twmap-base:`cat VERSION`
docker build -t $tag -t happyman/docker-twmap-base:latest --push .

# docker push
docker push $tag

# arm64
#docker buildx build --platform linux/aarch64 -t happyman/docker-twmap-base:arm64-`cat VERSION` -t happyman/docker-twmap-base:arm64-latest --push .
