#!/bin/bash
ffmpeg -f concat -safe 0 -i list.txt -c copy week.mp4root@bekhterev:~/captured# cat ren.sh
I=1
cd /root/captured/!vid/
for F in *; do
#  echo "$F" `printf image_%06d.jpeg $I`
  mv "$F" `printf image_%06d.jpeg $I` 2>/dev/null || true
  I=$((I + 1))
done
