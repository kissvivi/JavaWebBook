<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
<title>ע��</title>
</head>
<body >
<%
 response.setHeader("refresh","2;url=index.jsp");//��ʱ��ת
 session.invalidate();//ע��
%>
<div align="center">
<h3 >���,���Ѿ��˳���ϵͳ,�����������ҳ</h3>
<h3>��û����ת,�밴<a href="index.jsp">����</a>
</div>
</body>
</html>