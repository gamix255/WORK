sh stop-viewer.sh
cp -pR ../ajax-xhr2-image-viewer/ /ram/
cd /ram/ajax-xhr2-image-viewer/
python ./ajax-test.py &
for i in `seq 0 3600`; do sleep 1; sh lcd-cape-fb1-to-png.sh ; done
sh stop-viewer.sh


