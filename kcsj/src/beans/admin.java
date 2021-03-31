package beans;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.sql.*;
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


import util.DBUtil;
import util.SQLUtil;
//��¼ע��
public class admin {
	private String name;
	private String id;
	private String password;
	private String phone_number;
	private String dizhi;
	private String mail;
	public DBUtil db;
	public SQLUtil sq;
	
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	public String getDizhi() {
		return dizhi;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMail() {
		return mail;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setPhone_number(String phone_nimber) {
		this.phone_number = phone_nimber;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public admin(){
		db=new DBUtil();
		sq=new SQLUtil();
	}
	   //��¼��Ϣ��֤
		public boolean checkLogin(String id,String password) throws Exception{
			String sql="SELECT *FROM bookinfo where id=? and password=?";
			Map m=db.getMap(sql, new String[]{id,password});
			if(m==null)
				return false;
			else
				return true;
		}
		//����Ա�ж�
		public boolean checkRoot(String id) throws SQLException{
			String sql="SELECT flag FROM bookinfo where id=?";
			PreparedStatement pstmt=sq.getPrepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			if(rs.getString("flag").equals("yes")){//yes�ǹ���Ա
				return true;
			}else
			return false;
		}
		//��ȡ��Ϣ
		public List getAllStu()throws Exception{
			List adm=null;
			String sql="SELECT *FROM bookinfo";
			adm=db.getList(sql, null);
			return adm;
		}
		
		//������ȡ��Ϣ
		public ResultSet Dchaxun() throws SQLException{
			String sql="SELECT *FROM bookinfo";
			PreparedStatement pstmt=sq.getPrepareStatement(sql);

			ResultSet rs=pstmt.executeQuery();

			return rs;
		}
		//ͨ��id��ȡ��Ϣ
		public Map getUser( String id){
			Map us=null;
			String sql="select *from bookinfo where id=?";
			String []params={id};
			us=db.getMap(sql, params);
			return us;
		}

		//�����Ϣ
		public int addBook()throws Exception{
			int result=0;
			String sql="insert into bookinfo values(?,?,?,?,?,?)";
			String []params={name,id,password,phone_number,dizhi,mail};
			result=db.update(sql,params);
			return result;
		}
		//ɾ����Ϣ
		public int delBook(String del){
			int result=0;
			String sql="delete from bookinfo where id=?";
			String []params={del};
			result=db.update(sql, params);
			return result;
		}
public static void main(String[] args) {
	admin ad=new admin();
	System.out.println(ad.getName());
}
}
