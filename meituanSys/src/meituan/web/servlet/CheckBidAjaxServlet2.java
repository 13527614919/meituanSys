package meituan.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meituan.domain.Business;
import meituan.service.BusinessService;


public class CheckBidAjaxServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BusinessService busSer = new BusinessService();
		//1.接收用户名
		String bId = request.getParameter("bId");
				
		//2.调用service完成查询 返回值为user
		Business business = null;
		try {
			business =  busSer.checkUsernameAjax(bId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		//3.判断user 写回信息
		if(business == null) {
			response.getWriter().println("1");
		} else {
			response.getWriter().println("0");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

