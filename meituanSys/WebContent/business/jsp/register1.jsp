<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录注册入口</title>
<!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/register1.css" type="text/css" />
     <script type="text/javascript" src="${pageContext.request.contextPath }/business/js/jquery-latest.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath }/business/js/my.js"></script>
     <script type="text/javascript">
		
        function changeImage() {
			document.getElementById("img").src = "${pageContext.request.contextPath}/imageCode?time="
					+ new Date().getTime();
		}
	</script>
    <style>
         input::-webkit-input-placeholder {
            text-align: left;
         }
         select{  
			  -webkit-appearance: none;
		}
    </style>
    
<!--导入jquery -->

   <script type="text/javascript">
		$(document).ready(function(){
		  $("#loginContral").click(function(){
			  $("#register1").hide();
			  $("#login1").show();
		  });
		  $("#show").click(function(){
			  $("#register1").show();
			  $("#login1").hide();
		  });
		  $("#login2").click(function(){
			  $("#register1").hide();
			  $("#login1").show();
		  });
		});
	</script>
</head>
<body>

   <div class="register1-main">
       <div class="top">
           <span id="loginContral"> <img class="top-sign" src="${pageContext.request.contextPath }/business/imgs/register1/sign.png"></img> </span>
           <span> <img class="top-font" src="${pageContext.request.contextPath }/business/imgs/register1/font.png"></img> </span>
           
       </div>
       <div class="bodymain">
	       <div class="table-main" id="register1">
	             <a  id="login2">已有账号，去登录>></a>
	             <h2>注册</h2>
	             <hr color=#E7E7E7 size=1px />
	             <div class="tabletype">
	                 <form name="register1Page" method="post" action="${pageContext.request.contextPath}/registerServlet2">
	                     <table>
	                         
		                     <tr>
		                        <td> 
			                        <div class="table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/person.png" class="div-imgs"/>
			                            <input type="text" id="bId" name="bId" class="table-text" placeholder="账号，5-20数字、字母或下划线">
			                            <div id="bidError" class="bidEStyle"></div>
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                        <td> 
			                        <div class="table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/scoke.png" class="div-imgs"/>
			                            <input type="password" id="password" name="bPassword" class="table-text"  placeholder="密码，6-16位，必须包含数字和字母">
			                            <div id="pwdError" class="bidEStyle"></div>
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                        <td> 
			                        <div class="table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/scoke.png" class="div-imgs"/>
			                            <input type="password" id="pwdConfirm" name="password2" class="table-text"  placeholder="密码，6-16位，必须包含数字和字母">
			                            <div id="pwdConfirmError" class="bidEStyle"></div>
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                        <td> 
			                        <div class="table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/localzation.png" class="div-imgs"/>
			                            <select name="bPhoneAddress" class="table-text">
			                                <option value="+86(中国)">+86(中国)</option>
			                                <option value="+65(新加坡)">+65(新加坡)</option>
			                                <option value="+852(香港)">+852(香港)</option>
			                                <option value="+853(澳门)">+853(澳门)</option>
			                            </select>
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                        <td> 
			                        <div class="table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/phone.png" class="div-imgs"/>
			                            <input type="text" id="telephone" name="bPhone" class="table-text"  placeholder="账号使用者手机">
			                            <div id="telError" class="bidEStyle"></div>
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
			                      <th> <input type="text" name="ckcode" class="table-code" placeholder="图形验证码"></th>
			                       <td ><img src="${pageContext.request.contextPath}/imageCode" id="img" class="table-code-button"/> </td>
			                     
		                     </tr>
		                     
		                     <tr  class="table-code-button1">
		                        <td>  <a href="javascript:void(0);" onclick="changeImage()" ></a> </td>
		                        <td><div class="ckcode_msg">${ckcode_msg}</div> </td>
		                     </tr>
		                     
		                     <tr>
		                      <td>  <input type="submit" id="submit" value="注册" class="table-button"></td>
		                     </tr>
		                     
	                     </table>
	                 </form>
	             </div> 
	       </div>
       
	       <!--   隐藏登录 -->
	        <div class="login-hide" id="login1"  style="display:none;">
			     <jsp:include page="login.jsp" />
	       </div>
	       
	    </div>
       
   </div>
  <script src="${pageContext.request.contextPath }/business/js/register.js"></script>
  <script src="${pageContext.request.contextPath }/business/js/jquery-1.10.1.min.js"></script>
</body>
</html>