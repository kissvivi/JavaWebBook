<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.admin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>修改</title>
</head>
<body>
123测试
<%request.setCharacterEncoding("GBK"); %>
<%
		String msg=(String)request.getAttribute("msg");
		String isbn=(String)request.getAttribute("isbn");
			out.print(msg);
			out.print(isbn);
			%>	
		
<script> window.alert('<%=msg%>');</script>			
</body>
<%
response.setHeader("Refresh", "1;url=showddan.jsp");
%>
</html>