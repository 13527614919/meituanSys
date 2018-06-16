package meituan.service;

import java.sql.SQLException;

import meituan.dao.BusinessDao;
import meituan.daoImpl.BusinessDaoImpl;
import meituan.domain.Business;
import meituan.exception.MyBusinessException;

public class BusinessService {
	
	BusinessDao bsd = new BusinessDaoImpl();
	
	//AjAx检查注册账号
	public Business checkUsernameAjax(String bid) throws SQLException {
		return bsd.getIdByBIdAjax(bid);
	}

	//商家注册账号
	public void regist(Business business) throws MyBusinessException {
		try {
			bsd.register(business);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new MyBusinessException("注册失败");
		}
	}

	public Business loginByBIdAndPassword(String bid, String password) throws MyBusinessException {
		Business business = null;
		try {
			business = bsd.loginByBIdAndPassword(bid, password);
			if(business == null) {
				throw new MyBusinessException("用户账号或密码错误");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new MyBusinessException("用户名或密码错误");
		}
		return business;
	}

}
