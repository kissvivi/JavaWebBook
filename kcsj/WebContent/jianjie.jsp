<%@page import="org.apache.catalina.connector.OutputBuffer"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.Books" %>
        <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="head.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>jianjie</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%!String msg="̫���ˡ�������Ȿ��"; int i=0;%>
<%

request.setCharacterEncoding("GBK");
out.print(request.getParameter("isbn"));
String ss=request.getParameter("isbn");
Books book=new Books();
ResultSet rs=book.JjAllBook(request.getParameter("isbn"));
if(rs.next()){
	//rs.previous();//���ص���һ����¼
	//while(rs.next()){
%>
<table align="center" border="1" bordercolor="#7B68EE" width="75%" >
<tr>
<td>

	<a href="jianjie.jsp">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td><td>&nbsp;</td>
<td>
	        ������<%=rs.getString("book_name")%><br>
	        ���ߣ�<%=rs.getString("zuozhe")%><br>
	        ���ۣ�<%=rs.getString("danjia")%>Ԫ<br>
	    ISBN��<%=rs.getString("isbn")%><br>
	        �����磺<%=rs.getString("chubanshe")%>
	        ��飺<%=rs.getString("jianjie")%>
		<%session.setAttribute("zuozhe",rs.getString("zuozhe"));%>
	        </td>    	     
	  </tr>
	  <tr></tr>

	  </table>
	 <h4 align="center"><a href="goodstianjia.jsp?isbn=<%=rs.getString("isbn")%>">���빺�ﳵ</a></h4>
	 <h4 align="center"><a href="index.jsp">����</a></h4>
<%
	  //	}
	}else{
	msg="�Բ���û���Ȿ��";
	out.print(msg);
	response.setHeader("Refresh", "1;url=index.jsp");
}

%>

<script >window.alert('<%=msg%>')</script>

<jsp:include page="foot.html"></jsp:include>
</body>
</html>