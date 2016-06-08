#!/bin/bash
ffmpeg -y -f image2 -r 25 -i /root/captured/!vid/image_%06d.jpeg -c:v libx264 -preset fast -crf 23 -framerate 25 /root/captured/2016.06.06.mp4
