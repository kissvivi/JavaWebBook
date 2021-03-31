package beans;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.*;

import com.mysql.fabric.xmlrpc.base.Data;

import util.DBUtil;
import util.SQLUtil;

public class Goods {
	
	private String danjia;
	private String bookname;
	private String isbn;
	private String ku_id;
	private String ddan_id;
	private String data;
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getDdan_id() {
		return ddan_id;
	}
	public void setDdan_id(String ddan_id) {
		this.ddan_id = ddan_id;
	}
	public String getDanjia() {
		return danjia;
	}
	public void setDanjia(String danjia) {
		this.danjia = danjia;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getKu_id() {
		return ku_id;
	}
	public void setKu_id(String ku_id) {
		this.ku_id = ku_id;
	}
	public SQLUtil getSq() {
		return sq;
	}
	public void setSq(SQLUtil sq) {
		this.sq = sq;
	}
	public DBUtil getDb() {
		return db;
	}
	public void setDb(DBUtil db) {
		this.db = db;
	}
	private SQLUtil sq;
	private DBUtil db;
	public Goods(){
		db=new DBUtil();
		sq=new SQLUtil();
	}
	//读取所有货物
	public List getAllGoods(){
		List go=null;
		String sql="SELECT *FROM ddan";
		go=db.getList(sql, null);
		return go;
	}	
	//单个读取信息
	public ResultSet DGoodsChaxun(String kh_id) throws SQLException{
		String sql="SELECT *FROM ddan where kh_id=?";
		PreparedStatement pstmt=sq.getPrepareStatement(sql);
		pstmt.setString(1, kh_id);
		ResultSet rs=pstmt.executeQuery();

		return rs;
	}
	public ResultSet DGoodsGm(String ddan_i) throws SQLException{
		String sql="SELECT *FROM ddan where ddan_id=?";
		PreparedStatement pstmt=sq.getPrepareStatement(sql);
		pstmt.setString(1, ddan_i);
		ResultSet rs=pstmt.executeQuery();

		return rs;
	}
	//添加信息
	public int addGoods(String sql,String []params){
		int result=0;
		//
		result=db.update(sql, params);
		return result;
	}
	//通过客户id读取购物信息
	public Map getGoods( String id){
		Map stu=null;
		String sql="select *from ddan where ddan_id=?";
		String []params={id};
		stu=db.getMap(sql, params);
		return stu;
	}
	//修改图书信息
	public int updateGoods(String sql,String []params)throws Exception{
		int result=0;
		//
		result=db.update(sql, params);
		return result;
	}
	//删除图书信息通过客户id
	public int delGoods(String del){
		int result=0;
		String sql="delete from ddan where ddan_id=?";
		String []params={del};
		result=db.update(sql, params);
		return result;
	}
	//生成订单日期
	public String getdates(){
		String date=null;
		date=new Date().toString();
		return date;
	}
	//生成随机订单号
	public int suiji(){
		int s=0;
		Random ss=new Random();
		s=ss.nextInt(1000000000);
		if(s==ss.nextInt(1000000000))
		{
			s=ss.nextInt(1000000000);
		}
		return s;
	}

}
