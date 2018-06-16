package meituan.dao;

import java.sql.SQLException;

import meituan.domain.Business;

public interface BusinessDao {

	//检查注册用户名
		public Business getIdByBIdAjax(String bid) throws SQLException;

		public void register(Business business) throws SQLException;

		public Business loginByBIdAndPassword(String bid, String password) throws SQLException ;
	
}
