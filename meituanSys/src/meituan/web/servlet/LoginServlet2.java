package meituan.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meituan.domain.Business;
import meituan.exception.MyBusinessException;
import meituan.service.BusinessService;

public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取表单数据
		String bid = request.getParameter("loginId");
		String password = request.getParameter("loginPassword");
		BusinessService bs = new BusinessService();
		
	    try {
			//调用业务逻辑
			Business business = bs.loginByBIdAndPassword(bid, password);
			
			//分发转向,如果正常，跳转到商家管理中心页
			request.getSession().setAttribute("business", business);
			request.getRequestDispatcher("/business/jsp/businessMain.jsp").forward(request, response);
		} catch (MyBusinessException e) {
			//失败，则返回登录页面
			e.printStackTrace();
			//分发转向
			request.getRequestDispatcher("/business/jsp/register1.jsp").forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
