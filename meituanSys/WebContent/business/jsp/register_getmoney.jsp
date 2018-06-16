<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>收款信息填写页面</title>
     <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/register_procedure.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

    <div class="getmoney-all">
         <div class="getmoney-top">
	        <jsp:include page="register_top.jsp" />
	     </div>
	   
	    <div class="getmoney-body">
	         <div class="getmoney-procedure">
	             <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/register_press3.png">
	         </div>
	         <a>提前录入银行信息，便于美团总部审核和进行电子合同签约</a>
	         <form>
	              <table>
	                  <tr>
	                      <td class="getmoney-account1">*&nbsp;账户类型</td>
	                      <td class="getmoney-account2">
	                           <input type="radio" name="account" value="对私" checked>&nbsp;&nbsp;对私
	                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                           <input type="radio" name="account" value="对公">&nbsp;&nbsp;对公
	                      </td>
	                  </tr>
	                  
	                  <tr>
	                      <td class="getmoney-account1">*&nbsp;开户行</td>
                           <td >
		                        <select name="bankCardUser" class="getmoney-account2" style="margin-left:35px;">
			                            <option value="建设银行">建设银行</option>
			                            <option value="工商银行">工商银行</option>
			                            <option value="农业银行">农业银行</option>
			                            <option value="招商银行">招商银行</option>
			                            <option value="中国银行">中国银行</option>
			                            <option value="光大银行（需开通网银或手机银行）">光大银行（需开通网银或手机银行）</option>
			                            <option value="平安银行">平安银行</option>
			                            <option value="中信银行（需开通“短信通”业务）">中信银行（需开通“短信通”业务）</option>
			                            <option value="广发银行">广发银行</option>
			                            <option value="兴业银行">兴业银行</option>
			                            <option value="浦发银行">浦发银行</option>
			                            <option value="交通银行（需开通'银联认证支付'功能）">交通银行（需开通'银联认证支付'功能）</option>
			                            <option value="中国邮政储蓄">中国邮政储蓄</option>
			                            <option value="民生银行">民生银行</option>
			                            <option value="重庆农村商业">重庆农村商业</option>
			                            <option value="桂林银行">桂林银行</option>
			                            <option value="贵阳银行">贵阳银行</option>
			                       </select>
		                   </td>
	                  </tr>
	                  
	                  <tr>
	                      <td class="getmoney-account1">*&nbsp;开户人姓名</td>
	                      <td class="getmoney-account2">
	                           <input type="text" name="bankCardUser" class="getmoney-input">
	                      </td>
	                  </tr>
	                  
	                  <tr>
	                      <td class="getmoney-account1">*&nbsp;银行卡号</td>
	                      <td class="getmoney-account2">
	                           <input type="text" name="bankCardNum" class="getmoney-input">
	                      </td>
	                  </tr>

	              </table>
	              
  <!-- -----------------------其他或按钮模块---------------------------- -->                
                  <div class="getmoney-button">
                     <table>
                          <tr>
                             <td >
                                 <input type="button" value="上一步"  class="getmoney-button1"
                                    onclick="location.href='register_aqtitude.jsp'">
                             </td>
                             <td>  &nbsp;&nbsp;</td>
                             <td>
                                 <input type="button" value="提交并进入下一步" class="getmoney-button2" 
                                    onclick="location.href='register_identification.jsp'">
                             </td>
                          </tr>
                     </table>
                 </div>
             </form>
	    </div>
	    
	    <div class="getmoney-bottom">
	         <jsp:include page="register_bottom.jsp" />
	    </div>
	   
	</div>
</body>
</html>