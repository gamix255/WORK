sh stop-viewer.sh
cp -pR ../ajax-xhr2-image-viewer/ /ram/
cd /ram/ajax-xhr2-image-viewer/
python ./ajax-test.py &
while :
 do sleep 0.1
 sh lcd-cape-fb1-to-png.sh > /dev/null 2>&1 
done
sh stop-viewer.sh


