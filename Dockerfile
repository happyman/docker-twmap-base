FROM ubuntu:focal
ENV TZ=Asia/Taipei TERM=linux
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && apt-get -y upgrade && \
    apt-get -y install vim curl wget  git imagemagick pngquant gpsbabel parallel proj-bin inkscape \
               php php-cli php-gd php-curl php-json php-mbstring && \
    apt-get clean && rm -rf /var/lib/apt/lists/* 
