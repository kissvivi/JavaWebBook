<%@page import="beans.Goods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>����</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="gouwuche.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h3>������Ϣȷ��</h3>
<%String msg="����ɹ�"; %>
<%if((String)session.getAttribute("id")==null){
	response.setHeader("Refresh", "1;url=login.html");
	 msg="�Բ������ȵ�¼";
} else{%>
<h4 align="left" class="h4" style="color:#F00"><%=session.getAttribute("id") %>�Ĺ��ﳵ</h4>
<div align="center" class="table1">

<table width="65%" border="1" class="table table-striped" cellpadding="20px;" align="center">
<tr><td>������</td><td>����</td><td>�۸�</td><td>ISBN��</td><td>�ͻ���Ϣ</td><td>����ʱ��</td><td>����</td></tr>
<%
Goods go=new Goods();
String del=request.getParameter("ddan_id");
out.print(del);
int result=go.delGoods(del);
    msg="����ʧ�ܣ�����ȷ����ת����ҳ��";
if(result==1){
	msg="����ɹ�������ȷ����ת����ҳ��";
}
%>

</table>

<%}%>
</div>


<div align="center">
<br><a href="index.jsp">����ѡ��</a>
</div>
<%
response.setHeader("Refresh", "1;url=gouwuche.jsp");
%>
<script> window.alert('<%=msg%>')</script>
<jsp:include page="foot.html"></jsp:include>
</body>
</html>