<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>认证签约人页面</title>
 <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/register_procedure.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

    <div class="identification-all">
         <div class="identification-top">
	        <jsp:include page="register_top.jsp" />
	     </div>
	   
	    <div class="identification-body">
	         <div class="identification-procedure">
	             <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/register_press4.png">
	         </div>
	         
	         <div style="width:1000px; height:132px;">
		         <div class="identification-describe">
		              <div class="describe-img">
		                   <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/identification_sign.png">
		              </div>
		              <div class="describe-text">
		                  <ul>
			                  <li style="font-size:18px; color:#1e1e1e">签约人实名认证后可优先审核，优先上线</li>
			                  <li style="font-size:14px;">电子合同是店铺经营者与美团外卖签订的电子版合同，与纸质合同具有同等法律效力</li>
			                  <li style="font-size:14px;">实名验证签约人成功后，可享受优先审核，优先上线；成为优质商家，享受最优服务</li>
		                 </ul>
		              </div>
		              <div class="describe-button">跳过此步骤
		              </div>
		         </div>
	         </div>
	         
	         <a class="identification-point">带*表格为必填项 </a>
	         
	        <div style="width:1000px;height:470px;float:left;">
		         <form>
		              <table>
		                  <tr>
		                      <td class="identification-account1">*&nbsp;签约人类型</td>
		                      <td class="identification-account2">
		                           <input type="radio" name="personStye" value="个人" checked>&nbsp;&nbsp;个人
		                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                           <input type="radio" name="personStye" value="企业法人">&nbsp;&nbsp;企业法人
		                      </td>
		                  </tr>
		                  
		                  <tr>
		                      <td class="identification-account1">*&nbsp;签约人姓名</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="identification-input">
		                      </td>
		                  </tr>

                          <tr>
		                      <td class="identification-account1">*&nbsp;签约人身份</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="identification-input"
		                              placeholder="请填写签约人的身份证号码">
		                      </td>
		                  </tr>
		                
		                   <tr>
		                      <td class="identification-account1">*&nbsp;银行卡号</td>
		                      <td >
		                           <select name="bankCardUser" class="identification-input" style="width:230px;">
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
		                      <td >
		                           <input type="text" name="bankCardUser" class="identification-input" 
		                              style="width:230px;margin-left:20px;" placeholder="请填写您的银行卡号码">
		                      </td>
		                      
		                  </tr>
                
                          <tr>
                              
                              <td style="font-size:14px; color:#9a9a9a; margin-left:180px;">
                                                                 认证成功将扣除您卡内1分钱，请确保卡内有不少于1分钱的余额；仅支持储蓄卡
                              </td>
                          </tr>
                
                          <tr>
		                      <td class="identification-account1">*&nbsp;银行预留手机号</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="identification-input"
		                             placeholder="请填写您的银行卡预留手机号">
		                      </td>
		                  </tr>
	
		              </table>
		              
	  <!-- -----------------------其他或按钮模块---------------------------- -->                
	                  <div class="identification-button">
	                     <table>
	                          <tr>
	                             <td >
	                                 <input type="button" value="上一步"  class="identification-button1"
	                                    onclick="location.href='register_getmoney.jsp'">
	                             </td>
	                             <td>  &nbsp;&nbsp;</td>
	                             <td>
	                                 <input type="button" value="注册信息提交，等待审核" class="identification-button2" >
	                             </td>
	                          </tr>
	                     </table>
	                 </div>
	             </form>
             </div>
	    </div>
	    
	    <div class="identification-bottom">
	         <jsp:include page="register_bottom.jsp" />
	    </div>
	   
	</div>
</body>
</html>