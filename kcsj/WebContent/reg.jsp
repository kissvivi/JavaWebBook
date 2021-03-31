<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.admin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>zhuce</title>
</head>
<body>
123
<%request.setCharacterEncoding("GBK"); %>
<%/*
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String phone_number=request.getParameter("phone_number");
		String dizhi=request.getParameter("dizhi");
		String mail=request.getParameter("mail");
		String msg="注册失败！欢迎"+name;
		admin ad1=new admin();
		int result=ad1.addBook();
		if(result==1){
			msg="注册成功，欢迎"+name+"加入";
		}
			*/
		String msg=(String)request.getAttribute("msg");
			out.print(msg);
			%>	
		
<script> window.alert('<%=msg%>');</script>			
</body>
<%
response.setHeader("Refresh", "1;url=root.jsp");
%>
</html>