#!/bin/bash
ffmpeg -f concat -safe 0 -i list.txt -c copy week.mp4root
