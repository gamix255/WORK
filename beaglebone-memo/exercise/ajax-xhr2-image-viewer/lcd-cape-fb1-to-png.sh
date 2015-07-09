#!/bin/sh

# fb device to png script. require ffmpeg command.
# pixel format check by fbset command. provide by fbset package.
# loop enable version

# #fbset
# mode "480x272"
#     geometry 480 272 480 272 16
#     timings 0 0 0 0 0 0 0
#     accel true
#     rgba 5/11,6/5,5/0,0/0
# endmode

cat /dev/fb0 > rawvideo2
ffmpeg -vframes 1 -vcodec rawvideo -f rawvideo -pix_fmt rgb565le -s 480x272 -i rawvideo2 -f image2 -vcodec png image1.png
rm static/img-pre.png 
mv static/img.png static/img-pre.png
mv image1.png static/img.png
rm rawvideo2
