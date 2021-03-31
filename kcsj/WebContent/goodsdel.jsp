<!-- del.jsp//删除处理 -->
<%@page import="beans.Goods"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>删除处理</title>
</head>
<body>
11111
<%
Goods go=new Goods();
String del=request.getParameter("ddan_id");
out.print(del);
int result=go.delGoods(del);
String msg="删除失败，单击确定跳转到主页面";
if(result==1){
	msg="删除成功，单击确定跳转到主页面";
}
%>
<script>window.alert('<%=msg%>');</script>
<div align="center"><a href="showddan.jsp"> 单击返回主页面</a></div>
<%
response.setHeader("Refresh", "1;url=showddan.jsp");
%>

</body>
</html>