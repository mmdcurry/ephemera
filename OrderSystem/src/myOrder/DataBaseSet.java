package myOrder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseSet {
	
	private Connection getConn(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/OrderSystem?characterEncoding=UTF-8";
			conn = DriverManager.getConnection(url, "root", "11272789555913zt");// ��������
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * ��װ����ɾ���Ĺ�������
	 * @param sql
	 */
	public void execSql(String sql){
		PreparedStatement statement;
		try {
			statement = getConn().prepareStatement(sql);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * ��װ��ѯ��������
	 * @param sql
	 * @return
	 */
	public ResultSet execQuery(String sql){
		try {
			PreparedStatement statement = getConn().prepareStatement(sql);
			return statement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
}
