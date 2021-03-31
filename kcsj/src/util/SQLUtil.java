package util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SQLUtil {
	private String driver;
	private String url;
	private String username;
	private String password;
	private Connection con;
	public PreparedStatement pstmt;
	public ResultSet rs;
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//构造方法，定义驱动程序连接用户名和密码信息
    public SQLUtil(){
	  driver="com.mysql.jdbc.Driver";
	  url="jdbc:mysql://localhost:3306/books?useSSL=false";
	  username="root";
	  password="xxx";
    }
	// 获取连接对象
	public Connection getConnection() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	// 获取语句对象
	public PreparedStatement getPrepareStatement(String sql) {
		try {
			pstmt = getConnection().prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pstmt;
	}
	// 给pstmt的SQL语句设置参数（要求参数以数组形式给出）
	public void setParams(String sql, String[] params) {
		pstmt = this.getPrepareStatement(sql);
		if(params != null){
			for (int i = 0; i < params.length; i++){
				try {
					pstmt.setString(i + 1, params[i]);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}		
		}
	}
	
	// 关闭对象
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
		}
	}
	public static void main(String[] args) {
		DBUtil db=new DBUtil();
		//db.getUsername();
		System.out.println(db.getUsername());
	}
}
