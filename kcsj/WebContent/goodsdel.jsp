<!-- del.jsp//ɾ������ -->
<%@page import="beans.Goods"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>ɾ������</title>
</head>
<body>
11111
<%
Goods go=new Goods();
String del=request.getParameter("ddan_id");
out.print(del);
int result=go.delGoods(del);
String msg="ɾ��ʧ�ܣ�����ȷ����ת����ҳ��";
if(result==1){
	msg="ɾ���ɹ�������ȷ����ת����ҳ��";
}
%>
<script>window.alert('<%=msg%>');</script>
<div align="center"><a href="showddan.jsp"> ����������ҳ��</a></div>
<%
response.setHeader("Refresh", "1;url=showddan.jsp");
%>

</body>
</html>