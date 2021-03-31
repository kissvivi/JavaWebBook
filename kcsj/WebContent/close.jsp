<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>注销</title>
</head>
<body >
<%
 response.setHeader("refresh","2;url=index.jsp");//定时跳转
 session.invalidate();//注销
%>
<div align="center">
<h3 >你好,你已经退出本系统,两秒后跳回首页</h3>
<h3>如没有跳转,请按<a href="index.jsp">这里</a>
</div>
</body>
</html>