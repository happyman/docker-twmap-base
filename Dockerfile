FROM ubuntu:jammy
ENV TZ=Asia/Taipei TERM=linux
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && apt-get -y upgrade && \
    apt-get -y install vim zip unzip curl wget git imagemagick pngquant gpsbabel parallel proj-bin inkscape \
               php php-cli php-gd php-xml php-curl php-json php-mbstring php-zip php-gearman && \
    apt-get clean && rm -rf /var/lib/apt/lists/* 
