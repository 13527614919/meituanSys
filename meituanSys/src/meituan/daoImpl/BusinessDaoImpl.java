package meituan.daoImpl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import meituan.dao.BusinessDao;
import meituan.domain.Business;
import meituan.util.C3P0Util;

public class BusinessDaoImpl implements BusinessDao{

	//检查注册用户名
	public Business getIdByBIdAjax(String bid) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		String sql = "select * from business where bId = ? limit 1";
		return qr.query(sql, new BeanHandler<Business>(Business.class), bid);
	}

	@Override
	public void register(Business business) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		String sql = "insert into business(bId, bPassword, bPhone, bPhoneAddress) values(?,?,?,?)";
		qr.update(sql, business.getbId(), business.getbPassword(), business.getbPhone()
				, business.getbPhoneAddress());
		
	}

	//用户登录
	@Override
	public Business loginByBIdAndPassword(String bid, String password) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		String sql = "select * from business where bId=? and bPassword=?";
		return qr.query(sql, new BeanHandler<Business>(Business.class), bid, password);
	}
	
	
}
