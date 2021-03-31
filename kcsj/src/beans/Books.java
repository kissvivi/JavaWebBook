package beans;
import util.SQLUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import util.DBUtil;
public class Books {
	private String book_name;
	private String zuozhe;
	private String isbn;
	private String chubanshe;
	private String jianjie;
	private String danjia;
	private DBUtil db;
	private SQLUtil sq;
	public Books(){
		db=new DBUtil();
		sq=new SQLUtil();
		//db.setUrl("jdbc:mysql://127.0.0.1:3306/stu?useSSL=false");
	}
	public void setDanjia(String danjia) {
		this.danjia = danjia;
	}
	public String getDanjia() {
		return danjia;
	}
	public void setBookname(String bookname) {
		this.book_name = bookname;
	}
	public String getBookname() {
		return book_name;
	}
	public void setChubanshe(String chubanshe) {
		this.chubanshe = chubanshe;
	}
	public String getChubanshe() {
		return chubanshe;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setZuozhe(String zuozhe) {
		this.zuozhe = zuozhe;
	}
	public String getZuozhe() {
		return zuozhe;
	}
	//��ȡ��Ϣ
	public List getAllBook(){
		List bk=null;
		String sql="SELECT *FROM book";
		bk=db.getList(sql, null);
		return bk;
	}
	//����
	public ResultSet SsAllBook(String ss) throws SQLException{
	//	String ss="С����";
	//	String sql="SELECT *FROM book where book_name="+ss;
		String sql="SELECT *FROM book WHERE book_name LIKE  '%"+ss+"%'";
		PreparedStatement pstmt=sq.getPrepareStatement(sql);

		ResultSet rs=pstmt.executeQuery();

		return rs;
	}
	//���
	public ResultSet JjAllBook(String sss) throws SQLException{
	//	String ss="С����";
	//	String sql="SELECT *FROM book where book_name="+ss;
		String sql="SELECT *FROM book WHERE isbn=?";
		PreparedStatement pstmt=sq.getPrepareStatement(sql);
		pstmt.setString(1, sss);
		ResultSet rs=pstmt.executeQuery();

		return rs;
	}
	//������ȡ��Ϣ
	public ResultSet Dchaxun() throws SQLException{
		String sql="SELECT *FROM book";
		PreparedStatement pstmt=sq.getPrepareStatement(sql);

		ResultSet rs=pstmt.executeQuery();

		return rs;
	}
	//�����Ϣ
	public int addBook(String sql,String []params){
		int result=0;
		//String sql="insert into book values(?,?,?,?,?)";
		//String []params={book_name,zuozhe,isbn,chubanshe,jianjie};
		result=db.update(sql, params);
		return result;
	}
	//ͨ��isbn��ȡ��Ϣ
	public Map getBook( String isb)throws Exception{
		Map stu=null;
		String sql="select *from book where isbn=?";
		String []params={isb};
		stu=db.getMap(sql, params);
		return stu;
	}
	//ͨ��isbn��ȡ��Ϣ
	public ResultSet getBooks(String isb) throws SQLException{
		String sql="SELECT *FROM book where isbn=?";
		PreparedStatement pstmt=sq.getPrepareStatement(sql);
		pstmt.setString(1, isb);
		ResultSet rs=pstmt.executeQuery();

		return rs;
	}
	//�޸�ͼ����Ϣ
	public int updateBook(String sql,String []params){
		int result=0;
		//String sql="update book set book_name=?,zuozhe=?,chubanshe=?,jianjie=?where isbn=?";
		//String []params={book_name,zuozhe,chubanshe,jianjie};
		result=db.update(sql, params);
		return result;
	}
	//ɾ��ͼ����Ϣ
	public int delBook(String del){
		int result=0;
		String sql="delete from book where isbn=?";
		String []params={del};
		result=db.update(sql, params);
		return result;
	}
}

