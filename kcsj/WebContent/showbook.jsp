<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.Books" %>
      <%@ page import="java.util.*" %>
      <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�鿴ͼ��</title>
</head>
<body>
<jsp:include page="admin_head.html"></jsp:include>
<% Books book=new Books();
ResultSet rs=book.Dchaxun();
while(rs.next()){

%>
<table width="75%" border="0" align="center" class="table-responsive">

<tr>

<td>

	<a href="jianjie.jsp?isbn=<%=rs.getString("isbn")%>">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td>
<td>
	        ������<%=rs.getString("book_name")%><br>
	        ���ߣ�<%=rs.getString("zuozhe")%><br>
	        ���ۣ�<%=rs.getString("danjia")%>Ԫ<br>
	    ISBN��<%=rs.getString("isbn")%><br>
	        �����磺<%=rs.getString("chubanshe")%><br>
	        <a href="book_edit.jsp?isbn=<%=rs.getString("isbn")%>">�޸�</a>&nbsp;&nbsp;<a href="book_tianjia.html">���</a>&nbsp;&nbsp;
	        <a href="book_del.jsp?isbn=<%=rs.getString("isbn")%>" onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
	        </td>
	        
	        <%if(!rs.next())  break;%>
	        <td>

	<a href="jianjie.jsp?isbn=<%=rs.getString("isbn")%>">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td>
<td>
	        ������<%=rs.getString("book_name")%><br>
	        ���ߣ�<%=rs.getString("zuozhe")%><br>
	        ���ۣ�<%=rs.getString("danjia")%>Ԫ<br>
	    ISBN��<%=rs.getString("isbn")%><br>
	        �����磺<%=rs.getString("chubanshe")%><br>
	        <a href="book_edit.jsp?isbn=<%=rs.getString("isbn")%>">�޸�</a>&nbsp;&nbsp;<a href="book_tianjia.html">���</a>&nbsp;&nbsp;
	        <a href="book_del.jsp?isbn=<%=rs.getString("isbn")%>" onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
	        </td>


	           
</tr><%} %>
</table> 

<jsp:include page="admin_foot.html"></jsp:include>
</body>
</html>