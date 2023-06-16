tag=happyman/docker-twmap-base:`cat VERSION`
docker build -t $tag -t happyman/docker-twmap-base:latest .

# docker push
echo docker push $tag
echo docker push happyman/docker-twmap-base:latest
