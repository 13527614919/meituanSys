<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商家入驻流程介绍页面</title>
      <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/register_procedure.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
    
    <div class="procedure-main">
       <div>
	        <jsp:include page="register_top.jsp" />
	    </div>
	    
	    <div class="procedure-middle">
	        <div class="procedure-middle2">
	           <img class="procedure-imgs" src="${pageContext.request.contextPath }/business/imgs/registerInfo/procedure.png"></img>
	        </div>
	        <div class="procedure-submit">
	           <a style="line-height:35px; color:#ffffff;  text-decoration:none;" href="./register_shop.jsp">资料已准备好，马上申请开店
	           </a>
	         </div>
	    </div>
	    
	    <div>
	        <jsp:include page="register_bottom.jsp" />
	    </div>
    
    </div>

</body>
</html>