<!-- edit.jsp//修改页面 -->
<%@page import="beans.Goods"%>
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
<h3 align="center">修改订单信息</h3>
<div align="center">
<form action="goodsedit" method="post">

<%
request.setCharacterEncoding("GBk");
String id=request.getParameter("ddan_id");
out.print(id);
Goods go=new Goods();
//book.setIsbn(isb);//set值
HashMap bk=(HashMap)go.getGoods(id);
if(bk!=null){
%>
<table>
<tr><th></th><td><input type="text" name="ddan_id"  value="<%= bk.get("ddan_id") %>" readonly="readonly"></td></tr><!-- 设置订单号不可修改 -->
<tr><th>单价</th><td><input type="text" name="danjia"  value="<%= bk.get("danjia")%>"></td></tr><!-- 设置值 -->
<tr><th>书名</th><td><input type="text" name="book_name" value="<%= bk.get("book_name")%>"></td></tr>
<tr><th>isbn号</th><td><input type="text" name="isbn" value="<%= bk.get("isbn")%>"></td></tr>
<tr><th>客户id</th><td><input type="text" name="kh_id" value="<%= bk.get("kh_id")%>"></td></tr>
<tr><th>下单时间</th><td><textarea name="date" ><%= bk.get("date")%></textarea></td></tr>
<tr></tr>
<%} %>
</table>
<br>
<button class="btn btn-danger" type="submit">修改</button>&nbsp;&nbsp;<button class="btn btn-danger" type="button" onclick="window.location.href('showddan.jsp')">返回</button>
</form>
</div>
</body>
</html>