<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<script type="text/javascript">
    function toggle(){
        var test1 = document.getElementById('test1');
        if(test1.src.indexOf('header_bg') >= 0){
            test1.src="../imgs/introduce/header_line.png";
        }else{
            test1.src="../imgs/introduce/header_bg.png";
        }
    }
</script>

    <img id="test1" src="../imgs/introduce/header_bg.png" alt="" onclick="toggle()" />
</body>
</html>