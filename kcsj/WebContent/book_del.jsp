<!-- del.jsp//ɾ������ -->
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.Books" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>ɾ������</title>
</head>
<body>
11111
<%
Books book=new Books();
String del=request.getParameter("isbn");
out.print(del);
int result=book.delBook(del);
String msg="ɾ��ʧ�ܣ�����ȷ����ת����ҳ��";
if(result==1){
	msg="ɾ���ɹ�������ȷ����ת����ҳ��";
}
%>
<script>window.alert('<%=msg%>');</script>
<div align="center"><a href="showbook.jsp"> ����������ҳ��</a></div>
<%
response.setHeader("Refresh", "1;url=showbook.jsp");
%>

</body>
</html>