<!-- edit.jsp//�޸�ҳ�� -->
<%@page import="java.util.HashMap"%>
<%@page import="beans.Books"%>
      <%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="head.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>�޸�ҳ��</title>
</head>
<body>
<h3 align="center">�޸��鼮��Ϣ</h3>
<div align="center">
<form action="edit" method="post">

<%
request.setCharacterEncoding("GBk");
String isb=request.getParameter("isbn");
out.print(isb);
Books book=new Books();
//book.setIsbn(isb);//setֵ
HashMap bk=(HashMap)book.getBook(isb);
if(bk!=null){
%>
<table>
<tr><th>isbn</th><td><input type="hidden" name="isbn"  value="<%= request.getParameter("isbn")%>"></td></tr>
<tr><th>����</th><td><input type="text" name="book_name"  value="<%= bk.get("book_name")%>"></td></tr><!-- ����ֵ -->
<tr><th>����</th><td><input type="text" name="zuozhe" value="<%= bk.get("zuozhe")%>"></td></tr>
<tr><th>����</th><td><input type="text" name="danjia" value="<%= bk.get("danjia")%>"></td></tr>
<tr><th>������</th><td><input type="text" name="chubanshe" value="<%= bk.get("chubanshe")%>"></td></tr>
<tr><th>���</th><td><textarea name="jianjie" ><%= bk.get("jianjie")%></textarea></td></tr>
<tr><th>ͼƬ��ַ</th><td><input type="text" name="image" value="<%= bk.get("image")%>"></td></tr>
<tr></tr>
<%} %>
</table>
<br>
<button class="btn btn-danger" type="submit">�޸�</button>&nbsp;&nbsp;<button class="btn btn-danger" type="button" onclick="window.location.href('showbook.jsp')">����</button>
</form>
</div>
</body>
</html>