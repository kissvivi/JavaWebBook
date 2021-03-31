<!-- edit.jsp//修改页面 -->
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
<title>修改页面</title>
</head>
<body>
<h3 align="center">修改书籍信息</h3>
<div align="center">
<form action="edit" method="post">

<%
request.setCharacterEncoding("GBk");
String isb=request.getParameter("isbn");
out.print(isb);
Books book=new Books();
//book.setIsbn(isb);//set值
HashMap bk=(HashMap)book.getBook(isb);
if(bk!=null){
%>
<table>
<tr><th>isbn</th><td><input type="hidden" name="isbn"  value="<%= request.getParameter("isbn")%>"></td></tr>
<tr><th>书名</th><td><input type="text" name="book_name"  value="<%= bk.get("book_name")%>"></td></tr><!-- 设置值 -->
<tr><th>作者</th><td><input type="text" name="zuozhe" value="<%= bk.get("zuozhe")%>"></td></tr>
<tr><th>单价</th><td><input type="text" name="danjia" value="<%= bk.get("danjia")%>"></td></tr>
<tr><th>出版社</th><td><input type="text" name="chubanshe" value="<%= bk.get("chubanshe")%>"></td></tr>
<tr><th>简介</th><td><textarea name="jianjie" ><%= bk.get("jianjie")%></textarea></td></tr>
<tr><th>图片地址</th><td><input type="text" name="image" value="<%= bk.get("image")%>"></td></tr>
<tr></tr>
<%} %>
</table>
<br>
<button class="btn btn-danger" type="submit">修改</button>&nbsp;&nbsp;<button class="btn btn-danger" type="button" onclick="window.location.href('showbook.jsp')">返回</button>
</form>
</div>
</body>
</html>