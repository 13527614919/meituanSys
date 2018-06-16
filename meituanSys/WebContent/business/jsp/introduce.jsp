<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>美团外卖－开店申请_商家入驻</title>
    <!--导入css -->
    <link rel="stylesheet" href="../css/introduce.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
    a{  text-decoration:none; color:#FFFFFF }
    </style>
</head>
<body>
	<div class="introduce-main">
	    <div class="header-under">
	       <div class="header-middle">
	         
	           <div class="header-surface-top">
	                <div class="header-top-imgs"></div>
	                <div class="header-top-one">美团外卖</div>
	                <div class="header-top-two">|&nbsp;&nbsp;我要开店</div>
	           </div>
	           <div class="header-middle-font">加入美团外卖，销量用户双倍增长</div>
	           
	            <div>
		           <div class="header-under-one" >
		              <div class="header-under-one1" ></div>
			              <div class="header-under-one2">
			                  <p class="header-under-one3">入驻商家</p>
			                  <p id="na1" class="header-under-one4"><span>200</span>万</p>
			                  <div class="header-line"></div>
			              </div>
			        </div>
			        
		           <div class="header-under-two" >
		               <div class="header-under-one1" ></div>
		                   <div class="header-under-one2">
			                  <p class="header-under-one3">开站城市</p>
			                  <p id="na1" class="header-under-one4"><span>1600</span>+</p>
			                  <div class="header-line"></div>
			              </div>
		           </div>
		           
		           <div class="header-under-three" >
		               <div class="header-under-one1" ></div>
		                  <div class="header-under-one2">
			                  <p class="header-under-one3">平均用户</p>
			                  <p id="na1" class="header-under-one4"><span>2.7</span>亿</p>
			                  <div class="header-line"></div>
			              </div>
		           </div>
	           </div>
	           <div class="header-application" style="cursor:pointer">
	               <a href="register1.jsp">  申请开店  </a>
	               
	           </div>
	          
	       </div>
	    </div>
	    <!-- 介绍页面地图 块-->
	    <div>
	        <jsp:include page="intro_map.jsp" />
	    </div>
	    
	    <!-- 介绍页面流程简介 块-->
	    <div class="flow"> </div>
	    <div class="desc"> </div>
	    
	     <!-- 商家注册入口块-->
	    <div class="footer">
            <div class="fonter-top">等你<span style="color:#48CECC">加入</span></div>  
            <div class="footer-application" style="cursor:pointer">
                 <a href="register1.jsp">  申请开店  </a>
            </div>
        </div>
	</div>

</body>
</html>