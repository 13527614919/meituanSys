<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商家中心主页</title>
     <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/businessMain.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
   
</head>
<body>

    <div class="business-main">
		<div class="bsn-menu">
			 <jsp:include page="businessMenu.jsp" />
		</div>
			
		<div class="bsn-right">
		   <div class="bsn-top">
			    <div>
			         <input type="text" name="select"  placeholder="订单序号、订单号、手机号码或地址">
			         <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/select.png"></img>
			    </div>
			</div>
			
			<div class="bsn-body">
			</div>	      
		</div>
		    
	</div>
</body>
</html>