<!-- del.jsp//删除处理 -->
<%@page import="beans.admin"%>
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
admin ad=new admin();
String del=request.getParameter("id");
out.print(del);
int result=ad.delBook(del);
String msg="删除失败，单击确定跳转到主页面";
if(result==1){
	msg="删除成功，单击确定跳转到主页面";
}
%>
<script>window.alert('<%=msg%>');</script>
<div align="center"><a href="showuser.jsp"> 单击返回主页面</a></div>
<%
response.setHeader("Refresh", "1;url=showuser.jsp");
%>

</body>
</html>