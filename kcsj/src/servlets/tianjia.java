package servlets;

import java.io.IOException;

import beans.Books;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * ���
 * Servlet implementation class tianjia
 */
@WebServlet("/tianjia")
public class tianjia extends HttpServlet {
	private static final long serialVersionUID = 4L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tianjia() {
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
		response.setCharacterEncoding("GBK");
		//��ȡҳ����Ϣ
		String book_name=request.getParameter("book_name");
		String zuozhe=request.getParameter("zuozhe");
		String danjia=request.getParameter("danjia");
		String isbn=request.getParameter("isbn");
		String chubanshe=request.getParameter("chubanshe");
		String jianjie=request.getParameter("jianjie");
		String image=request.getParameter("image");
		System.out.println(book_name);
		//���
		Books book=new Books();
		String msg="���ʧ�ܣ����������";
		String sql="insert into book values(?,?,?,?,?,?,?)";
		String []params={danjia,book_name,zuozhe,isbn,chubanshe,jianjie,image};
		int result=book.addBook(sql, params);
			if(result==1){
				msg="��ӳɹ������̫����";
			}
		//��ת
		request.setAttribute("msg", msg);
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("book_tianjia.jsp");
		rd.forward(request,response);
	}

}
