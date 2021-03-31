<!-- edit.jsp//修改页面 -->
<%@page import="beans.admin"%>
<%@page import="java.util.HashMap"%>
<%@page import="beans.Books"%>
      <%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>修改页面</title>
</head>
<body>
<h3 align="center">添加书籍信息</h3>
<div align="center">
<form action="useredit" method="post">

<%
request.setCharacterEncoding("GBk");
String id=request.getParameter("id");
out.print(id);
admin ad=new admin();

HashMap us=(HashMap)ad.getUser(id);
if(us!=null){
%>
<table>
<tr><th></th><td><input type="hidden" name="id"  value="<%= request.getParameter("id")%>"></td></tr>
<tr><th>姓名</th><td><input type="text" name="name"  value="<%= us.get("name")%>"></td></tr><!-- 设置值 -->
<tr><th>密码</th><td><input type="text" name="password" value="<%= us.get("password")%>"></td></tr>
<tr><th>手机号</th><td><input type="text" name="phone_number" value="<%= us.get("phone_number")%>"></td></tr>
<tr><th>地址</th><td><input type="text" name="dizhi" value="<%= us.get("dizhi")%>"></td></tr>
<tr><th>邮箱地址</th><td><input type="text" name="mail" value="<%= us.get("mail")%>"></td></tr>
<tr></tr>
<%} %>
</table>
<br>
<button class="btn btn-danger" type="submit">修改</button>&nbsp;&nbsp;<button class="btn btn-danger" type="button" onclick="window.location.href('showuser.jsp')">返回</button>
</form>
</div>
</body>
</html>