<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("#hide").click(function(){
  $("#p1").hide();
  $("#p2").show();
  });
  $("#show").click(function(){
  $("#p2").hide();
  $("#p1").show();
  });
});
</script>
</head>
<body>
<p id="p1">如果点击“隐藏”按钮，我就会消失。</p>
<p id="p2" style="display:none">如果点击“显示”按钮，我就会消失22222222。</p>
<button id="hide" type="button">隐藏</button>
<button id="show" type="button">显示</button>
</body>
</html>

