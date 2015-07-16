from bottle import route, run
from bottle import static_file

@route('/static/<filename:path>')
def static_file_send(filename):
  return static_file(filename, root='./static')


@route('/screen')

def screen():
  return """

<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>xhr2 image loading test</title>
<script type="text/javascript">
 
<!--
setInterval("loadIMG()",128);
window.URL = window.URL || window.webkitURL;
 
function loadIMG(){
  var xhr;
  xhr = new XMLHttpRequest();
  console.log("loadIMG entry");
  
  xhr.open("GET","/static/img.png",true);
  xhr.responseType = 'blob';
  xhr.onload = function () {
    var blob, img;
    console.log("xhr onload");
    if(xhr.status === 200 ){
    console.log("xhr status === 200");
    blob = xhr.response;
    img = document.createElement('img');

    img.onload = function() {
      window.URL.revokeObjectURL(img.src);
      };
      img.src = window.URL.createObjectURL(blob);
//      document.body.appendChild(img);

//      var oldE = document.body.lastChild;
//      document.body.replaceChild(img, oldE);
      document.screenshot.src=img.src;
    }
  };
  xhr.send();
};
//-->
</script>
</head>
<body>
<p class="image1">
<img src="/static/img_org.png" alt="screenshot" name="screenshot"><br>
</p>
</body>
</html>
"""
run(host='0.0.0.0', port=1234)
