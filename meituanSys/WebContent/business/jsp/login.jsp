<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商家登录页面</title>
<!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/login.css" type="text/css" />
    <style>
         input::-webkit-input-placeholder {
            text-align: left;
         }
    </style>
    
    <!--导入jquery -->
    <script src="${pageContext.request.contextPath }/business/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
		  $("#login-password").click(function(){
			  $("#loginPhone").hide();
			  $("#loginPass").show();
			  $(".login-password").css('color','#06c1ae');
			  $(".login-phone").css('color','#6b6b6b');
		  });
		  $("#login-cellphone").click(function(){
			  $("#loginPhone").show();
			  $("#loginPass").hide();
			  $(".login-phone").css('color','#06c1ae');
			  $(".login-password").css('color','#6b6b6b');
		  });
		});
		
		function check(){
	    	if(passLoginPage.loginId.value == ""){
	    		alert("用户名不能为空");
	    		return false;
	    	}else if(passLoginPage.loginPassword.value == ""){
	            alert("密码为空或是密码错误");
	            return false;
	    	}else{
	    		return true;
	    	}
	    }
	    
	</script>
	
</head>
<body>
    <div class="login-main">
          <div class="login-top">
             <span class="login-password" id="login-password" >账户密码登录</span>
             <span class="login-phone" id="login-cellphone">手机验证登录</span>
          </div>
          
          <div id="loginPass" class="pass-main">
	                 <form name="passLoginPage" method="post" action="${pageContext.request.contextPath }/loginServlet2" 
	                   onSubmit="check()" >
	                     <table>
	                         
		                     <tr>
		                        <td> 
			                        <div class="login-table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/person.png" class="login-div-imgs"/>
			                            <input type="text" name="loginId" class="login-table-text"  placeholder="账号">
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                        <td> 
			                        <div class="login-table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/scoke.png" class="login-div-imgs"/>
			                            <input type="password" name="loginPassword" class="login-table-text"  placeholder="密码">
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                      <td>  <input type="submit" value="登录" class="login-table-button" ></td>
		                     </tr>
		                     
		              </table>
		        </form>
		    </div>
		    
		    <!-- 隐藏手机登录方式 -->
		     <div id="loginPhone" class="pass-main"  style="display:none;">
	                 <form name="passLoginPage" method="post" action="management.jsp" >
	                     <table>
	                         
		                     <tr>
		                        <td> 
			                        <div class="login-table-div">
			                            <img src="${pageContext.request.contextPath }/business/imgs/register1/phone.png" class="login-div-imgs"/>
			                            <input type="text" name="loginPhone" class="login-table-text"  placeholder="手机号码">
			                       </div>
		                        </td>
		                     </tr>
		                     
		                     <tr>
			                      <th> <input type="text" name="identifying-code" class="table-code" placeholder="验证码"></th>
			                       <td> <input type="button" name="identifying-code" class="table-code-button" value="获取验证码"></td>
		                     </tr>
		                     
		                     <tr>
		                      <td>  <input type="button" name="regbutton" value="登录" class="login-table-button" ></td>
		                     </tr>
		                     
		              </table>
		        </form>
		    </div>            
		                  
                
		    <div class="login-bottom">
		       <a class="login-register1" id="show">注册账号，免费入驻</a>
		       <a class="login-forget">忘记账号密码</a>
		    </div>
    </div>
</body>
</html>