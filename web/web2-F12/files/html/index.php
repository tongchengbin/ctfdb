<p style="font-family:arial;color:black;font-size:20px;text-align:center;">Flag不在这里哦</p>
<!-- flag{this_is_flag} -->
</body>
<script>
 document.oncontextmenu=function() {
      
   alert("右键被禁用");
   return false;
  };
 document.onkeydown = function(e) {
      
    e = window.event || e;
    var k = e.keyCode;
    //屏蔽ctrl+u，F12键
    if ((e.ctrlKey == true && k == 85) || k == 123) {
      
      if (k == 85)
        alert("Ctrl+U被禁用!");
      else 
        alert("F12被禁用!");
      e.keyCode = 0;
      e.returnValue = false;
      e.cancelBubble = true;
      return false;
    }
 }
</script>