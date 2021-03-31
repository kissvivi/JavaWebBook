package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Books;

/**
 * Servlet implementation class sousuo
 */
@WebServlet("/sousuo")
public class sousuo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sousuo() {
        super();
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
		// TODO Auto-generated method stub
		//获取文本
		request.setCharacterEncoding("GBK");
		String ss=request.getParameter("sou");
		//实例化javabean
		//Books bk=new Books();
		//set
		//bk.setBookname(ss);
		
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("sousuo.jsp");
		rd.forward(request,response);
	}

}
