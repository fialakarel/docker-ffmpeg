FROM alpine:latest

MAINTAINER Karel Fiala <fiala.karel@gmail.com>

RUN cd /opt \
  	&& wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz \
  	&& unxz ffmpeg-release-amd64-static.tar.xz \
  	&& tar -xf ffmpeg-release-amd64-static.tar \
  	&& rm ffmpeg-release-amd64-static.tar \
  	&& ln -s $(find /opt -name ffmpeg) /usr/bin/ffmpeg \
  	&& ln -s $(find /opt -name ffprobe) /usr/bin/ffprobe
