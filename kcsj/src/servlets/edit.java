package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Books;

/**修改
 * Servlet implementation class edit
 */
@WebServlet("/edit")
public class edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edit() {
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
		String book_name=request.getParameter("book_name");
		String zuozhe=request.getParameter("zuozhe");
		String danjia=request.getParameter("danjia");
		String isbn=request.getParameter("isbn");
		String chubanshe=request.getParameter("chubanshe");
		String jianjie=request.getParameter("jianjie");
		String image=request.getParameter("image");
		//添加
		Books book=new Books();
		
		String msg="修改失败，请重新再试一试";
		String sql="update book set book_name=?,zuozhe=?,chubanshe=?,jianjie=?,image=?,danjia=? where isbn=?";
		String []params={book_name,zuozhe,chubanshe,jianjie,image,danjia,isbn};
		int result=book.updateBook(sql, params);
			if(result==1){
				msg="修改成功，真的太棒了";
			}
		//跳转
			request.setAttribute("isbn", isbn);
		request.setAttribute("msg", msg);
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("book_edit_to.jsp");
		rd.forward(request,response);
	}
}
