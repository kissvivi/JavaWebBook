package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Books;
import beans.Goods;

/**
 * Servlet implementation class goodsedit
 */
@WebServlet("/goodsedit")
public class goodsedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public goodsedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("GBK");
		//获取页面信息
		String ddan_id=request.getParameter("ddan_id");
		String danjia=request.getParameter("danjia");
		String book_name=request.getParameter("book_name");
		String isbn=request.getParameter("isbn");
		String kh_id=request.getParameter("kh_id");
		String date=request.getParameter("date");
		//添加
		Goods go=new Goods();
		
		String msg="修改失败，请重新再试一试";
		String sql="update ddan set danjia=?,book_name=?,isbn=?,kh_id=?,date=? where ddan_id=?";
		String []params={danjia,book_name,isbn,kh_id,date,ddan_id};
		int result;
		try {
			result = go.updateGoods(sql, params);
		
			if(result==1){
				msg="修改成功，真的太棒了";
			}
		//跳转
			request.setAttribute("id", ddan_id);
		request.setAttribute("msg", msg);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("goods_edit_to.jsp");
		rd.forward(request,response);
	}

}
