FROM ubuntu:jammy
ENV TZ=Asia/Taipei TERM=linux
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && apt-get -y upgrade && \
    apt-get -y install vim zip unzip curl wget git imagemagick pngquant gpsbabel proj-bin inkscape netcat \
		img2pdf ghostscript php php-cli php-gd php-xml php-curl php-json php-mbstring php-zip  && \
    sed -i -E 's/name="memory" value=".+"/name="memory" value="8GiB"/g' /etc/ImageMagick-6/policy.xml &&\
    sed -i -E 's/name="map" value=".+"/name="map" value="8GiB"/g' /etc/ImageMagick-6/policy.xml &&\
    sed -i -E 's/name="area" value=".+"/name="area" value="8GiB"/g' /etc/ImageMagick-6/policy.xml &&\
    sed -i -E 's/name="disk" value=".+"/name="disk" value="8GiB"/g' /etc/ImageMagick-6/policy.xml &&\
    apt-get clean && rm -rf /var/lib/apt/lists/* 
