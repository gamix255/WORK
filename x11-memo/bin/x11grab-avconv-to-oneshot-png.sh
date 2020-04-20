avconv -s "$(xwininfo -root | grep -Po 'geometry[^+]*' | sed 's/^\S* //')" -f x11grab -i :0.0 -r 1 -f image2 -frames:v 1  imagename.png
