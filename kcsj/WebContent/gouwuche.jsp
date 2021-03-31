<%@page import="beans.Goods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>购物车</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="gouwuche.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%String msg="欢迎"+session.getAttribute("id")+"到kk书店购书！"; %>
<%if((String)session.getAttribute("id")==null){
	response.setHeader("Refresh", "1;url=login.html");
	 msg="对不起请先登录";
} else{%>
<jsp:include page="head.jsp"></jsp:include>
<h4 align="left" class="h4" style="color:#F00"><%=session.getAttribute("id") %>的购物车</h4>
<div align="center" class="table1">

<table width="70%" border="1" class="table table-striped" cellpadding="20px;" align="center">
<tr><td>订单号</td><td>书名</td><td>价格</td><td>ISBN号</td><td>客户信息</td><td>订单时间</td><td>操作</td></tr>
<%
Goods go=new Goods();
ResultSet rs=go.DGoodsChaxun((String)session.getAttribute("id"));
if(rs.next()) {
rs.previous();//返回上一条记录
while(rs.next()){

%>

<tr><td><%=rs.getString("ddan_id") %></td><td><%=rs.getString("book_name") %></td><td><%=rs.getString("danjia") %>元</td>
<td><%=rs.getString("isbn") %></td><td><%=rs.getString("kh_id") %></td><td><%=rs.getString("date") %></td>
<td><a href="#">修改</a>&nbsp;&nbsp;&nbsp;
	        <a href="goods_del.jsp?ddan_id=<%=rs.getString("ddan_id")%>" onclick="return confirm('确定要删除吗？')">删除</a></td> 
	        <td><button type="button" onclick="window.location.href='goods_ok.jsp?ddan_id=<%= rs.getString("ddan_id")%>'" class="btn btn-danger">购买</button></td>
</tr>


<%}%>

</table>

</div>
<%}else{ %>
<h3>您的购物车为空</h3>
<%}} %>

<div align="center">
<br><a href="index.jsp">返回选书</a>
</div>

<script> window.alert('<%=msg%>')</script>
<jsp:include page="foot.html"></jsp:include>
</body>
</html>