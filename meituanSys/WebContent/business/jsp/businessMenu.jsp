<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商家信息管理页面</title>
  <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/businessMenu.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
</head>  
  
<body>  
	<div style="width:180px; background-color:#1a1a1a;height:700px; ">
	    <div style="width:180px;height:60px;font-size:22px;color:#ffffff;
	               display:block;line-height:70px;border-bottom:1px solid #ffffff; ">美团外卖商家中心</div>
		<div id="nav" class="nav">  
		     <ul> 
		          <li><a>商家首页</a>
		              <ul>  
		                  <li><a>&nbsp;首页更改</a></li>
		              </ul>
		         </li>
		          <li><a>菜单管理</a>  
		              <ul>
		                  <li><a>&nbsp;全部菜单</a></li>   
		                  <li><a>&nbsp;添加菜单</a></li> 
		              </ul>  
		          </li>
		          <li><a>订单管理</a>  
		              <ul>
		                  <li><a>&nbsp;今日订单</a></li>   
		                  <li><a>&nbsp;未接订单</a></li>  
		                  <li><a>&nbsp;已接订单</a></li>
		                  <li><a>&nbsp;配送订单</a></li>   
		                  <li><a>&nbsp;退货订单</a></li>  
		              </ul>  
		          </li>  
		          <li><a>售后管理</a>  
		              <ul>  
		                  <li><a>&nbsp;五星评论区</a></li>  
		                  <li><a>&nbsp;四星评论区</a></li>
		                  <li><a>&nbsp;三星评论区</a></li>
		                  <li><a>&nbsp;二星评论区</a></li>
		                  <li><a>&nbsp;一星评论区</a></li>
		              </ul>  
		          </li>  
		          <li><a>财务管理</a>
		              <ul>  
		                  <li><a>&nbsp;今日营业额</a></li>
		                  <li><a>&nbsp;本月营业额</a></li>
		              </ul>
		          </li>   
		          <li><a>经营分析</a></li>
		          <li><a>门店推广</a>
		              <ul>  
		                  <li><a>&nbsp;黄金排名</a></li>
		              </ul>
		          </li>   
		          <li><a>营销活动</a>
		              <ul>  
		                  <li><a>&nbsp;折扣信息</a></li>
		              </ul>
		          </li> 
		          <li><a>特色服务</a></li>    
		     </ul>  
		</div>  
	</div>
</body>  
</html>