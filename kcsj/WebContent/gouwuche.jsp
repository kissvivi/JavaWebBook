<%@page import="beans.Goods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���ﳵ</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="gouwuche.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%String msg="��ӭ"+session.getAttribute("id")+"��kk��깺�飡"; %>
<%if((String)session.getAttribute("id")==null){
	response.setHeader("Refresh", "1;url=login.html");
	 msg="�Բ������ȵ�¼";
} else{%>
<jsp:include page="head.jsp"></jsp:include>
<h4 align="left" class="h4" style="color:#F00"><%=session.getAttribute("id") %>�Ĺ��ﳵ</h4>
<div align="center" class="table1">

<table width="70%" border="1" class="table table-striped" cellpadding="20px;" align="center">
<tr><td>������</td><td>����</td><td>�۸�</td><td>ISBN��</td><td>�ͻ���Ϣ</td><td>����ʱ��</td><td>����</td></tr>
<%
Goods go=new Goods();
ResultSet rs=go.DGoodsChaxun((String)session.getAttribute("id"));
if(rs.next()) {
rs.previous();//������һ����¼
while(rs.next()){

%>

<tr><td><%=rs.getString("ddan_id") %></td><td><%=rs.getString("book_name") %></td><td><%=rs.getString("danjia") %>Ԫ</td>
<td><%=rs.getString("isbn") %></td><td><%=rs.getString("kh_id") %></td><td><%=rs.getString("date") %></td>
<td><a href="#">�޸�</a>&nbsp;&nbsp;&nbsp;
	        <a href="goods_del.jsp?ddan_id=<%=rs.getString("ddan_id")%>" onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a></td> 
	        <td><button type="button" onclick="window.location.href='goods_ok.jsp?ddan_id=<%= rs.getString("ddan_id")%>'" class="btn btn-danger">����</button></td>
</tr>


<%}%>

</table>

</div>
<%}else{ %>
<h3>���Ĺ��ﳵΪ��</h3>
<%}} %>

<div align="center">
<br><a href="index.jsp">����ѡ��</a>
</div>

<script> window.alert('<%=msg%>')</script>
<jsp:include page="foot.html"></jsp:include>
</body>
</html>