<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>添加</title>
</head>
<body>
<%request.setCharacterEncoding("GBK"); %>
<%
		String msg=(String)request.getAttribute("msg");
			out.print(msg);
			out.print("用户id："+session.getAttribute("id"));
			%>	
		
<script> window.alert('<%=msg%>');</script>			
</body>
<%
response.setHeader("Refresh", "1;url=index.jsp");
%>
</html>