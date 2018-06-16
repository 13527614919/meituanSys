<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>美团外卖－开店申请_商家入驻</title>
<!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/introduce.css" type="text/css" />
    <script type="text/javascript" src="jquery-1.10.1.min.js">
	    $(function(){
	    	
	    	$('#divdemo').find('span').click(function(){
	    		
	    		$('#divdemo').find('span ').attr('class','');
	    		$('#divdemo').find('div').css('display','none');
	    		
	    		$(this).attr('class','active');
	    		
	    		$('#div1').find('div').eq( $(this).index() ).css('display','block');
	    		
	    	});
	    	
	    });
	 </script>
</head>
<body>
      <div class="map-background">
          <div class="map-top">
              <span style="color:#48CECC">优质</span>商家
          </div>
          
          <div class="map-describe">
              <p>覆盖全国
                  <span style="color:#48CECC">1300</span>+城市；
                  <span style="color:#48CECC">200万</span>+商家已合作
              </p>
          </div>
          <div class="map-menu">
              <span> <img src="${pageContext.request.contextPath }/business/imgs/introduce/shanghai_g.png"></img></span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span><img src="${pageContext.request.contextPath }/business/imgs/introduce/beijing_h.png"></span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span><img src="${pageContext.request.contextPath }/business/imgs/introduce/shenzheng_h.png"></span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span><img src="${pageContext.request.contextPath }/business/imgs/introduce/guangzhou_h.png"></span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span><img src="${pageContext.request.contextPath }/business/imgs/introduce/chengdu_h.png"></span>
          </div>
      
      </div>
</body>
</html>