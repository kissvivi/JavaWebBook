<!-- edit.jsp//�޸�ҳ�� -->
<%@page import="beans.admin"%>
<%@page import="java.util.HashMap"%>
<%@page import="beans.Books"%>
      <%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�޸�ҳ��</title>
</head>
<body>
<h3 align="center">����鼮��Ϣ</h3>
<div align="center">
<form action="useredit" method="post">

<%
request.setCharacterEncoding("GBk");
String id=request.getParameter("id");
out.print(id);
admin ad=new admin();

HashMap us=(HashMap)ad.getUser(id);
if(us!=null){
%>
<table>
<tr><th></th><td><input type="hidden" name="id"  value="<%= request.getParameter("id")%>"></td></tr>
<tr><th>����</th><td><input type="text" name="name"  value="<%= us.get("name")%>"></td></tr><!-- ����ֵ -->
<tr><th>����</th><td><input type="text" name="password" value="<%= us.get("password")%>"></td></tr>
<tr><th>�ֻ���</th><td><input type="text" name="phone_number" value="<%= us.get("phone_number")%>"></td></tr>
<tr><th>��ַ</th><td><input type="text" name="dizhi" value="<%= us.get("dizhi")%>"></td></tr>
<tr><th>�����ַ</th><td><input type="text" name="mail" value="<%= us.get("mail")%>"></td></tr>
<tr></tr>
<%} %>
</table>
<br>
<button class="btn btn-danger" type="submit">�޸�</button>&nbsp;&nbsp;<button class="btn btn-danger" type="button" onclick="window.location.href('showuser.jsp')">����</button>
</form>
</div>
</body>
</html>