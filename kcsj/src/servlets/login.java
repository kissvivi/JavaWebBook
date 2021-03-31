package servlets;
import java.io.IOException;
import util.DBUtil;
import util.SQLUtil;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.admin;
import java.util.*;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public login() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		//设置javabean属性
		admin ad=new admin();
		ad.setId(id);
		ad.setPassword(password);
		RequestDispatcher rd=null;
		try {
			ad.checkLogin(id, password);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//判断
		/*String sql="SELECT flag FROM book where id="+id;
		DBUtil db=new DBUtil();
		try {
			db.rs=db.getPrepareStatement(sql).executeQuery();
			rs.next;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql="SELECT flag FROM bookinfo where id="+id;
		SQLUtil sq=new SQLUtil();
		sq.setParams(sql,null);
		String flag=null;//管理员标志
		try {
			sq.rs=sq.pstmt.executeQuery();
			sq.rs.next();
			flag=sq.rs.getString("flag");
			if(flag.equals("yes")){
				flag="no";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};*/
	
		//String flag=;
		//跳转
		//request.setAttribute("flag", flag);
		rd=request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	

}
