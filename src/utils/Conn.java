package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conn {
	private static String url="jdbc:mysql://localhost:3306/test";
	private static String user="root";
	private static String password="123";
	static Connection conn=null;
	static{//静态代码块，加载类的同时实现数据库的连接
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	PreparedStatement pstmt=null;
	int num=0;
	public int update(String sql,Object[] object){//增、删、改用的方法，返回一个整型数
		try {
			pstmt=conn.prepareStatement(sql);
			for(int i=0;i<object.length;i++){
				pstmt.setObject(i+1, object[i]);
			}
			num=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}
	
	ResultSet rs=null;
	public ResultSet select(String sql,Object[] object){//查询用的方法，返回一个查询到的结果集
		try {
			pstmt=conn.prepareStatement(sql);
			for(int i=0;i<object.length;i++){
				pstmt.setObject(i+1,object[i]);
			}
			rs=pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public void close(){
		if(pstmt!=null){
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(rs!=null){
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

