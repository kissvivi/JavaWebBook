<%@page import="beans.Goods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>购物</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="gouwuche.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h3>订单信息确认</h3>
<%String msg="购买成功"; %>
<%if((String)session.getAttribute("id")==null){
	response.setHeader("Refresh", "1;url=login.html");
	 msg="对不起请先登录";
} else{%>
<h4 align="left" class="h4" style="color:#F00"><%=session.getAttribute("id") %>的购物车</h4>
<div align="center" class="table1">

<table width="65%" border="1" class="table table-striped" cellpadding="20px;" align="center">
<tr><td>订单号</td><td>书名</td><td>价格</td><td>ISBN号</td><td>客户信息</td><td>订单时间</td><td>操作</td></tr>
<%
Goods go=new Goods();
String del=request.getParameter("ddan_id");
out.print(del);
int result=go.delGoods(del);
    msg="购买失败，单击确定跳转到主页面";
if(result==1){
	msg="购买成功，单击确定跳转到主页面";
}
%>

</table>

<%}%>
</div>


<div align="center">
<br><a href="index.jsp">返回选书</a>
</div>
<%
response.setHeader("Refresh", "1;url=gouwuche.jsp");
%>
<script> window.alert('<%=msg%>')</script>
<jsp:include page="foot.html"></jsp:include>
</body>
</html>