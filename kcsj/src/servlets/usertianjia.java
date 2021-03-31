package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.admin;

/**
 * Servlet implementation class usertianjia
 */
@WebServlet("/usertianjia")
public class usertianjia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usertianjia() {
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
		request.setCharacterEncoding("GBK");
		//获取页面信息
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String phone_number=request.getParameter("phone_number");
		String dizhi=request.getParameter("dizhi");
		String mail=request.getParameter("mail");
		//注册
		admin ad=new admin();

		String msg="添加失败！重新添加";
		String sql="insert into bookinfo values(?,?,?,?,?,?,?)";
		String []params={name,id,password,phone_number,dizhi,mail,null};
		int result=ad.db.update(sql,params);
			if(result==1){
				msg="添加成功，真棒！！";
			}
		//跳转
		request.setAttribute("msg", msg);
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("user_tianjia.jsp");
		rd.forward(request,response);
	}

}
