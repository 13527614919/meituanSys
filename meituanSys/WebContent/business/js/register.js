$(function(){
	
	var $bId = $("#bId");
	var $password = $('#password');
	var flag1 = false;	//用户名
	var flag2 = false;	//密码
	var flag3 = false;	//确认密码
	var flag4 = false;	//电话
	var reg = /^[a-zA-Z][a-zA-Z0-9_]*$/;	//正则表达式：只能包含字母、数字
	
	$bId.keyup(function(){
		if($bId.val().trim()==""){           //val()获取bid的值，trim()表示去掉空格
			$("#bidError").html("<font color='#ff0000'>*用户名不能为空！");   //返回html()中的内容
			flag1 = false;
		}
		else if(!reg.test($bId.val().trim())){      //通过正则表达式验证用户名是否合法
			$("#bidError").html("<font color='#ff0000'>*用户名非法！");
			flag1 = false;
		}
		else{
			//获取输入的值
			var $value = $bId.val();
			
			$.get("/meituanSys/checkBidAjax2","bId="+$value,function(d){
				//alert(d);
				if(d==1){
					$("#bidError").html("<font color='#01D867'>*用户名可以使用！</font>");
					flag1 = true;
				}
				else{
					$("#bidError").html("<font color='#ff0000'>*用户名已被使用！");
					flag1 = false;
				}
			})
		}
	});
	
	
	$password.blur(function(){        //当元素失去焦点时发生 blur 事件
		if($password.val()==""){
			$("#pwdError").html("<font color='#ff0000'>*密码不能为空！");
			flag2 = false;
		}
		else{
			$("#pwdError").html("");
			flag2 = true;
		}
		if($("#pwdConfirm").val()==""){
			$("#pwdConfirmError").html("<font color='#ff0000'>*请确认密码！");
			flag3 = false;
		}
		else if($password.val() != $("#pwdConfirm").val()){
			$("#pwdConfirmError").html("<font color='#ff0000'>*两次密码不一致！");
			flag3 = false;
		}
		else{
			$("#pwdConfirmError").html("");
			flag3 = true;
		}
	});
	$("#pwdConfirm").blur(function(){
		if($("#pwdConfirm").val()==""){
			$("#pwdConfirmError").html("<font color='#ff0000'>*请确认密码！");
			flag3 = false;
		}
		else if($password.val()!=$("#pwdConfirm").val()){
			$("#pwdConfirmError").html("<font color='#ff0000'>*两次密码不一致！");
			flag3 = false;
		}
		else{
			$("#pwdConfirmError").html("");
			flag3 = true;
		}
		if($password.val()==""){
			$("#pwdError").html("<font color='#ff0000'>*密码不能为空！");
			flag2 = false;
		}
		else{
			$("#pwdError").html("");
			flag2 = true;
		}
	});
	
	$("#telephone").blur(function(){
		var tel = $("#telephone").val().trim();
		if(tel==""){
			$("#telError").html("<font color='#ff0000'>*请输入电话号码！");
			flag4 = false;
		} else{
			$("#telError").html("");
			flag4 = true;
		}
	});
	
	
	$("#submit").click(function(){
		//$bId.keyup();		//检查用户名
		$password.blur();			//检查密码
		$("#pwdConfirm").blur();	//检查确认密码
		$("#telephone").blur();		//检查电话
		
		//检查通过
//		if(flag1 && flag2 && flag3 && flag4){
//			$("#register1Page").submit();	//提交注册表单
//		}
	});
	
	$(document).keyup(function(event){
		//键盘回车事件
		if(event.keyCode==13){
			$("#submit").click();	//调用提交按钮点击事件
		}
	});
});