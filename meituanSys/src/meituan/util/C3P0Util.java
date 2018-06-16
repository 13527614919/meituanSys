package meituan.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3P0Util {
	//从数据源池中获取一个对象
	private static DataSource dataSource = new ComboPooledDataSource();
	
	public static DataSource getDataSource() {
		return dataSource;
	}

	//连接一个池中数据源
	public static Connection getConnection(){
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException("服务器繁忙。。。。");
		}
	}
	
	public static void release(Connection conn,Statement stmt,ResultSet rs){
		//关闭连接
				if(rs!=null){
					try {
						rs.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					rs = null;
				}
				if(stmt!=null){
					try {
						stmt.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					stmt = null;
				}
				if(conn!=null){
					try {
						conn.close();//关闭连接
					} catch (Exception e) {
						e.printStackTrace();
					}
					conn = null;
				}
	}
	
}
