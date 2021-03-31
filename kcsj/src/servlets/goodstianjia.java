package servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

import beans.Books;
import beans.Goods;
import beans.admin;


/**
 * Servlet implementation class goodstianjia
 */
@WebServlet("/goodstianjia")
public class goodstianjia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public goodstianjia() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//初始化session
		HttpSession session=request.getSession();
		request.setCharacterEncoding("GBK");
		//获取订单信息
		
		request.setCharacterEncoding("GBk");
		String isb=(String) session.getAttribute("isbn");

		Books book=new Books();
		Goods go=new Goods();
		//book.setIsbn(isb);//set值
		ResultSet bk;
		try {
			bk = book.getBooks(isb);


			while(bk.next()){
			String danjia=bk.getString("danjia");
			String book_name=bk.getString("book_name");
			String isbn= bk.getString("isbn");
			String kh_id=(String)session.getAttribute("id");
			String ddan_id=Integer.toString(go.suiji());
			String date=go.getdates();//获取当前时间
			//加入购物车
			
			//Goods go=new Goods();
			String msg="加入购物车失败！重新添加"+date;
			String sql="insert into ddan values(?,?,?,?,?,?)";
			String []params={ddan_id,danjia,book_name,isbn,kh_id,date};
			//String []params={"1","1","1","1","1"};
			int result=go.addGoods(sql, params);
				if(result==1){
					msg="加入购物车成功，真棒！！"+date;
				}
				if(kh_id==null){
					msg="对不起请先登录";
				}
			//跳转
			request.setAttribute("msg", msg);
			}}
		
		 catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("goods_tianjia.jsp");
		rd.forward(request,response);
	}

}
