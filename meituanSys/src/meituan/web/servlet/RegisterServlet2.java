package meituan.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import meituan.domain.Business;
import meituan.exception.MyBusinessException;
import meituan.service.BusinessService;


public class RegisterServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			   throws ServletException, IOException {	
		//处理验证码
		String ckcode = request.getParameter("ckcode");	
		String checkcode_session = (String) request.getSession().getAttribute("checkcode_session");	
		if(!checkcode_session.equals(ckcode)) {//如果验证码不一致，则跳回注册页面
			request.setAttribute("ckcode_msg", "*验证码错误");
			request.getRequestDispatcher("/business/jsp/register1.jsp").forward(request, response);
			return;
		}
		
		//获取表单数据
		Business business = new Business();
				 
		try {
			BeanUtils.populate(business, request.getParameterMap());
			
		//调用业务逻辑
		BusinessService bs = new BusinessService();
		bs.regist(business);
					
		//分发转向
		//把用户信息保存在session中
		request.getSession().setAttribute("business", business);//把用户的信息封装在session对象中
		request.getRequestDispatcher("/business/jsp/register_homePage.jsp").forward(request, response);
		} catch (MyBusinessException e) {
			request.getRequestDispatcher("/business/jsp/register1.jsp").forward(request, response);
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
