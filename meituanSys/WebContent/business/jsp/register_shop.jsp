<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完善商店信息</title>
     <!--导入css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/business/css/register_procedure.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/business/js/city.js"></script>  
</head>
<body>
    <div class="shop-all">
         
         <div class="shop-top">
	        <jsp:include page="register_top.jsp" />
	     </div>
	    
	    <div class="shop-body">
	         <div class="shop-procedure">
	             <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/register_shop1.png">
	         </div>
	         <form>
 <!-- ------------------------- 商家入驻基本信息菜单------------------------------------- -->
    	         <div class="shop-baseinfo">
		             <table>
		                  <tr>
		                     <td>
			                     <div class="table1-shopname">
			                         <a style="position:absolute;margin-top:9px;font-size:14px;">*门店名称</a>
			                         <input type="text" name="shopname" class="shop-table1-text">
			                     </div>
		                     </td>
		                  </tr>
		                 
		                 <tr>
		                     <td>
			                     <div class="table1-shopname">
			                         <a style="position:absolute;margin-top:9px;font-size:14px;">&nbsp;&nbsp;&nbsp;*联系人</a>
			                         <input type="text" name="shopname" class="shop-table1-text">
			                     </div>
		                     </td>
		                  </tr>
		                  
		                  <tr>
		                     <td>
			                     <div class="table1-shopname">
			                         <a style="position:absolute;margin-top:9px;font-size:14px;">*外卖电话</a>
			                         <input type="text" name="shopname" class="shop-table1-text">
			                     </div>
		                     </td>
		                  </tr>
		                  
		                  <tr>
		                     <td>
			                     <div class="table1-shopsype">
			                         <a style="position:absolute;margin-top:9px;font-size:14px;">*经营品类</a>
			                         
			                             <select name="bigType" class="table1-menutype">
			                                <option value="+86(中国)">快餐小吃</option>
			                                <option value="+65(新加坡)">地方菜</option>
			                                <option value="+852(香港)">海鲜/烧烤</option>
			                                <option value="+853(澳门)">西餐</option>
			                                <option value="+86(中国)">日韩料理</option>
			                                <option value="+65(新加坡)">火锅</option>
			                                <option value="+852(香港)">特色菜</option>
			                                <option value="+853(澳门)">香锅/烤鱼</option>
			                                <option value="+853(澳门)">东南亚菜</option>
			                            </select>
			                            
			                         <select name="bigType" class="table1-menutype">
			                                <option value="+86(中国)">美食</option>
			                                <option value="+65(新加坡)">甜点饮品</option>
			                                <option value="+852(香港)">生活超市</option>
			                                <option value="+853(澳门)">生鲜果蔬</option>
			                                <option value="+852(香港)">鲜花绿植</option>
			                                <option value="+853(澳门)">医药健康</option>
			                            </select>
			                           
			                     </div>
		                     </td>
		                  </tr>  
		             </table>
		         </div>
<!-- ------------------------- 商家入驻地址信息菜单------------------------------------- -->
                  <div class="shop-address">
                       <table>
		                  <tr>
		                     <td>
			                     <div class="table2-shopaddress">
			                         <a style="position:absolute;margin-top:9px;font-size:14px;">*门店区域</a>
			                         
			                         <select id="county" name="country" class="table1-menutype"> </select> 
			                          <select id="city" name="city" class="table1-menutype">  </select>  
									   <select id="province" name="province" class="table1-menutype"> </select>  
									    
									    <!--js初始化函数-->  
									    <script type="text/javascript">  
									        setup()  
									    </script> 
			                     </div>
		                     </td>
		                  </tr> 
		                  
		                 <tr>
		                     <td>
			                     <div class="table2-shopaddress">
			                         <a style="position:absolute;margin-top:9px;font-size:14px;">*门店地址</a>
			                         <input type="text" name="shopname" class="shop-table1-text" 
			                         placeholder="&nbsp;&nbsp;&nbsp;&nbsp;详细至门牌号，与营业执照地址一致">
			                     </div>
		                     </td>
		                  </tr>
		                     
		                 <tr>
		                     <td>
		                          <div class="table2-shopmap">
		                              <a style="font-size:14px;">*门店坐标</a>
		                               <div class="table2-shopmap1">
		                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/shop_map.png"  />
		                              </div>
		                          </div>
		                     </td>
		                 </tr>
		               
		                  <tr>
		                     <td>
		                          <div class="table2-dispetching">
		                              <a style="font-size:14px;">*配送方式</a>
		                               <div class="table2-dispetching-select">
		                                   <ul>
		                                       <li><input type="radio" name="dispetching" value="商家自配送" checked>商家自配送</li>
		                                       <li><input type="radio" name="dispetching" value="申请美团配送">申请美团配送&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                           <span style="font-size:15px; color: #808080;">(会有美团业务人员跟您沟通相关事宜)</span>
		                                        </li>
		                                   </ul>
		                              </div>
		                          </div>
		                     </td>
		                 </tr>   
		             </table>
                 </div>
                 
<!-- ------------------------- 商家图片信息菜单------------------------------------- -->
             <div class="table3-main">
                     <table>
                          <tr>
                              <td>
                                  <div class="table3-body">
                                       <a style="font-size:14px; float:left; margin-left:55px; margin-top:15px">*门脸图</a>
                                       <div class="table3-body-box">
                                           <ul>
                                              <li class="table3-box1">需拍出完整门匾、门框(建议正对门店2米处拍摄)</li>
                                              <li class="table3-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table3-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/shop_dool.png" style="width:160px; height:120px">
                                                 </li>
                                           </ul>
                                       </div>
                                  </div>
                              </td>
                          </tr>
                          
                          <tr>
                              <td>
                                  <div class="table3-body">
                                       <a style="font-size:14px; float:left; margin-left:25px; margin-top:15px">*店内环境图</a>
                                       <div class="table3-body-box">
                                           <ul>
                                              <li class="table3-box1">需真实反应用餐环境(收银台、用餐桌椅)</li>
                                              <li class="table3-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table3-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/shop_desk.png" style="width:160px; height:120px">
                                                 </li>
                                           </ul>
                                       </div>
                                  </div>
                              </td>
                          </tr>
                          
                          <tr>
                              <td>
                                  <div class="table3-body">
                                       <a style="font-size:14px; float:left; margin-left:-13px; margin-top:15px">*店内商标图(选填)</a>
                                       <div class="table3-body-box">
                                           <ul>
                                              <li class="table3-box1">需体现你店铺的特色，吸引更多的顾客进店点餐</li>
                                           
                                              <li class="table3-box2">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/download_sign.png" style="width:160px; height:120px">
                                                 </li>
                                              <li class="table3-box3">
                                                  <img src="${pageContext.request.contextPath }/business/imgs/registerInfo/shop_meituan.png" style="width:160px; height:120px">
                                                 </li>
                                              <li style="width:295px; height:60px; float:left; margin-left:20px;
                                                  margin-top:-70px; font-size:15px; color:#5c5c5c;">
                                                                                                     可用商品图代替；不可使用门脸图，否则会被驳回</li>    
                                           </ul>
                                       </div>
                                  </div>
                              </td>
                          </tr>
                          
                      </table>
                 </div>
  <!-- -----------------------其他或按钮模块---------------------------- -->    
                <div class="table4-main"> 
	                 <table>
	                      <tr>
	                          <th class="table4-font">其他平台开店链接</th>
	                          <td>
	                             <input type="text" class="table4-box" 
	                                 placeholder="&nbsp;&nbsp;&nbsp;选填，填写网址可快速开店">
	                          </td>
	                      </tr>
	                 </table>
                 </div>
                 
                 <div class="table5-main">
                     <table>
                          <tr>
                             <th>
                                 <input type="button" value="上一步" class="table5-button1" 
                                    onclick="location.href='register_homePage.jsp'">
                             </th>
                             <td>  &nbsp;&nbsp;</td>
                             <td>
                                 <input type="button" value="提交并进入下一步" class="table5-button2"
                                   onclick="location.href='register_aqtitude.jsp'" >
                             </td>
                          </tr>
                     </table>
                 </div>
                            
             </form>
	    </div>

	    <div class="shop-bottom">
	         <jsp:include page="register_bottom.jsp" />
	    </div>
	    
	</div>
</body>
</html>
 