<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资质信息填写页面</title>
     <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/register_procedure.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

    <div class="aqtitude-all">
         
         <div class="shop-top">
	        <jsp:include page="register_top.jsp" />
	     </div>
	    
	    <div class="aqtitude-body">
	         <div class="shop-procedure">
	             <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/register_press2.png">
	         </div>
	         <form>
                 <div class="table21-main">
                     <a><b>营业执照</b></a>
                     <div>
                       <table>
                         <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;营业执照照片</td>
		                         
                              <td>
                                  <div class="table21-box">
                                           <ul>
                                              <li class="table21-box1">1、需文字清晰、边框完整、漏出国徽</li>
                                           
                                              <li class="table21-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table21-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/aptitude.png" style="width:160px; height:120px">
                                                 </li> 
                                              <li class="table21-box1" style=" margin-top:-90px;">
                                                   2、拍复印件需加盖印章，可用有效特许证件代替
                                                   </li>  
                                                                                                     
                                           </ul>
                                  </div>
                              </td>
                          </tr>
                          
		                   <tr>
		                      <td class="aqtitude-bussiness1" style="margin-top:30px;">*&nbsp;营业执照名称</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;注册号/统一社会信用代码</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;法人代表/经营者</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;经营场所</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;经营执照有效期</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input2">
		                      </td>
		                      <td >
		                           <input type="checkbox" name="bankCardUser" style="float:left;margin-left:-350px;
		                           width:20px;height:20px">
		                           <span style="float:left;margin-left:-320px;">长期有效</span>
		                      </td>
		                  </tr>
		                  
                       </table>
                    </div>
                  </div>
               
 <!-- -----------------------法人代表身份证模块---------------------------- --> 
                   <div class="table22-main">
                     <a><b>法人代表手持身份证件照</b></a>
                     <div>
                       <table>
                         <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;手持身份证正面照片</td>
		                         
                              <td>
                                  <div class="table21-box">
                                           <ul>
                                              <li class="table21-box1">1、正面需清晰拍出人物五官和文字信息</li>
                                           
                                              <li class="table21-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table21-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/corporation1.png" style="width:160px; height:120px">
                                                 </li> 
                                              <li class="table21-box1" style=" margin-top:-80px;">
                                                   2、不可自拍、不可只拍身份证
                                                   </li>  
                                               <li class="table21-box1" style=" margin-top:-57px;">
                                                   3、可用其他有效证件替代
                                                   </li>                                                 
                                           </ul>
                                  </div>
                              </td>
                          </tr>
                          
                           <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;手持身份证反面照片</td>
		                         
                              <td>
                                  <div class="table21-box">
                                           <ul>
                                              <li class="table21-box1">1、背面需清晰拍出有效期等文字信息</li>
                                           
                                              <li class="table21-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table21-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/corporation2.png" style="width:160px; height:120px">
                                                 </li> 
                                              <li class="table21-box1" style=" margin-top:-93px;">
                                                   2、不可自拍、不可只拍身份证
                                                   </li>  
                                               <li class="table21-box1" style=" margin-top:-67px;">
                                                   3、可用其他有效证件替代
                                                   </li>    
                                                                                                     
                                           </ul>
                                  </div>
                              </td>
                          </tr>
                          
		                   <tr>
		                      <td class="aqtitude-bussiness1" style="margin-top:30px;">*&nbsp;姓名</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input" style="margin-top:10px;">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;身份证号码</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                  
		                  
                       </table>
                    </div>
                  </div>
                  
 <!-- -----------------------法人代表身份证模块---------------------------- --> 

                  <div class="table23-main">
                     <a><b>许可证</b></a>
                   <div>
                       <table>
                         <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;营业执照照片</td>
		                         
                              <td>
                                  <div class="table21-box">
                                           <ul>
                                              <li class="table21-box1">1、需文字清晰、边框完整</li>
                                           
                                              <li class="table21-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table21-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/aptitude.png" style="width:160px; height:120px">
                                                 </li> 
                                              <li class="table21-box1" style=" margin-top:-90px;">
                                                   2、可用食品流通许可证等其他有效证件代替
                                                   </li>  
                                                                                                     
                                           </ul>
                                  </div>
                              </td>
                          </tr>
                          
		                   <tr>
		                      <td class="aqtitude-bussiness1" style="margin-top:30px;">*&nbsp;许可证名称</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;法人代表姓名</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;许可证编号</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;许可证地址</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input">
		                      </td>
		                  </tr>
		                   <tr>
		                      <td class="aqtitude-bussiness1">*&nbsp;许可证有效期</td>
		                      <td >
		                           <input type="text" name="bankCardUser" class="aqtitude-input2">
		                      </td>
		                  </tr>
		                  
                       </table>
                    </div>
                    </div>
          
 
 
  <!-- -----------------------其他或按钮模块---------------------------- -->                
                  <div class="table24-main">
                     <table>
                          <tr>
                             <th>
                                 <input type="button" value="上一步" class="table5-button1" 
                                    onclick="location.href='register_shop.jsp'">
                             </th>
                             <td>  &nbsp;&nbsp;</td>
                             <td>
                                 <input type="button" value="提交并进入下一步" class="table5-button2"
                                     onclick="location.href='register_getmoney.jsp'" >
                             </td>
                          </tr>
                     </table>
                 </div>
             </form>
	    </div>

	    <div class="aqtitude-bottom">
	         <jsp:include page="register_bottom.jsp" />
	    </div>
	    
	</div>
</body>
</html>