#!/bin/sh
export DATETIME=`date +%Y%m%d%H%M`
export DATE=`date +%Y%m%d`
export MONT=`date +%Y%m`
mkdir -p /root/captured/$MONT/$DATE
#ffmpeg -ss 2 -i rtsp://192.168.88.253/ -y -f image2 -qscale 0 -frames 1 /root/captured/$MONT/$DATE/$DATETIME.jpeg
ffmpeg -rtsp_transport tcp -i 'rtsp://192.168.88.99/av0_0' -f image2 -vframes 1 -q:v 2 -pix_fmt yuvj420p /root/captured/$MONT/$DATE/$DATETIME.jpeg
cp /root/captured/$MONT/$DATE/$DATETIME.jpeg /srv/bekhterev.me/last.jpeg
