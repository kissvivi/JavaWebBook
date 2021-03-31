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
 * Servlet implementation class useredit
 */
@WebServlet("/useredit")
public class useredit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public useredit() {
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
		//��ȡҳ����Ϣ
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String phone_number=request.getParameter("phone_number");
		String dizhi=request.getParameter("dizhi");
		String mail=request.getParameter("mail");
		//���
		Books book=new Books();
		
		String msg="�޸�ʧ�ܣ�����������һ��";
		String sql="update bookinfo set name=?,password=?,phone_number=?,dizhi=?,mail=? where id=?";
		String []params={name,password,phone_number,dizhi,mail,id};
		int result=book.updateBook(sql, params);
			if(result==1){
				msg="�޸ĳɹ������̫����";
			}
		//��ת
			request.setAttribute("id", id);
		request.setAttribute("msg", msg);
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("user_edit_to.jsp");
		rd.forward(request,response);
	}

}
