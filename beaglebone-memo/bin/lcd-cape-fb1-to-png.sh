cat /dev/fb0 > rawvideo2
ffmpeg -vframes 1 -vcodec rawvideo -f rawvideo -pix_fmt rgb565le -s 480x272 -i rawvideo2 -f image2 -vcodec png image1.png
