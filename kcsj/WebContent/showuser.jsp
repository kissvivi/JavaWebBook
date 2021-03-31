<%@page import="beans.admin"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.Books" %>
      <%@ page import="java.util.*" %>
      <%@page import="java.sql.ResultSet"%>
      <!-- 查看用户信息 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="head.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>查看用户信息</title>
</head>
<body>
<h3 align="center">查看用户信息</h3><br>
<table width="65%" border="1" align="center" class="table-responsive">
<tr><td>姓名</td><td>用户名</td><td>手机号</td><td>常用地址</td><td>邮箱地址</td><td>数据操作</td></tr>
<% admin ad=new admin();
ResultSet rs=ad.Dchaxun();
while(rs.next()){
%>
<tr>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("id")%></td>
<td><%=rs.getString("phone_number")%></td>
<td><%=rs.getString("dizhi")%></td>
<td><%=rs.getString("mail")%></td>
	        <td><a href="user_tianjia.html">添加</a>&nbsp;&nbsp;
	        <a href="user_del.jsp?id=<%=rs.getString("id")%>" onclick="return confirm('确定要删除吗？')">删除</a></td> 
</tr><%} %>
</table> 
<div align="center">
<br><a href="showadmin.jsp">返回管理员主页</a>
</div>
<jsp:include page="admin_foot.html"></jsp:include>
</body>
</html>