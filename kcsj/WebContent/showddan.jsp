<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Goods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�鿴����</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="gouwuche.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%String msg="��ӭ����Ա"+session.getAttribute("id")+"��"; %>
<%if((String)session.getAttribute("id")==null){
	response.setHeader("Refresh", "1;url=login.html");
	 msg="�Բ������ȵ�¼";
} else{%>
<jsp:include page="admin_head.html"></jsp:include>

<h4 align="left" class="h4" style="color:#F00"><%=session.getAttribute("id") %>�Ķ�������</h4>
<div align="center" class="table1">
<table width="100%" border="1" class="table-responsive" cellpadding="20px;" align="center">
<tr><td>������</td><td>����</td><td>�۸�</td><td>ISBN��</td><td>�ͻ���Ϣ</td><td>����ʱ��</td><td>����</td></tr>
<%
Goods go=new Goods();
ArrayList goods=(ArrayList)go.getAllGoods();
for(Object o:goods){
Map m=(HashMap)o;

%>

<tr><td><%=m.get("ddan_id") %></td><td><%=m.get("book_name") %></td><td><%=m.get("danjia") %>Ԫ</td>
<td><%=m.get("isbn") %></td><td><%=m.get("kh_id") %></td><td><%=m.get("date") %></td>
<td><a href="goods_edit.jsp?ddan_id=<%=m.get("ddan_id")%>">�޸�</a>&nbsp;&nbsp;&nbsp;
	        <a href="goodsdel.jsp?ddan_id=<%=m.get("ddan_id")%>" onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a></td> 
</tr>


<%}%>

</table>
</div>


<%} %>

<div align="center">
<br><a href="showadmin.jsp">���ع���Ա��ҳ</a>
</div>

<script> window.alert('<%=msg%>')</script>
<jsp:include page="admin_foot.html"></jsp:include>
</body>
</html>