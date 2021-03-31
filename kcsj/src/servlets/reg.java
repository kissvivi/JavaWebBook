package servlets;

import java.io.IOException;
import beans.admin;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class reg
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 4L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
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
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String phone_number=request.getParameter("phone_number");
		String dizhi=request.getParameter("dizhi");
		String mail=request.getParameter("mail");
		//注册
		admin ad=new admin();

		String msg="注册失败！该用户名已经被注册！";
		String sql="insert into bookinfo values(?,?,?,?,?,?,?)";
		String []params={name,id,password,phone_number,dizhi,mail,"no"};
		int result=ad.db.update(sql,params);
			if(result==1){
				msg="注册成功，欢迎"+name+"加入";
			}
		//跳转
		request.setAttribute("msg", msg);
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("reg.jsp");
		rd.forward(request,response);
	}

}
