<%@page import="org.apache.catalina.connector.OutputBuffer"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="beans.Books" %>
        <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>搜索</title>
</head>
<body>
<%!String msg="太棒了、书库有这本书"; int i=0;%>
<%

request.setCharacterEncoding("GBK");
//out.print(request.getParameter("sou"));
String ss=request.getParameter("sou");
Books book=new Books();
ResultSet rs=book.SsAllBook(ss);
if(rs.next()){
	rs.previous();//返回到上一条记录
	while(rs.next()){

%>
<table align="center" width="80%" border="1">
<tr>
<td>

	<a href="jianjie.jsp?isbn=<%=rs.getString("isbn")%>">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td>
<td>
	        书名：<%=rs.getString("book_name")%><br>
	        作者：<%=rs.getString("zuozhe")%><br>
	        定价：<%=rs.getString("danjia")%>元<br>
	    ISBN：<%=rs.getString("isbn")%><br>
	        出版社：<%=rs.getString("chubanshe")%>
	        简介：<%=rs.getString("jianjie")%>
		<%session.setAttribute("zuozhe",rs.getString("zuozhe"));%>
	        </td>    	     
	  </tr>
	  <tr></tr>

	  </table>
	 <h3 align="center"><a href="goodstianjia.jsp?isbn=<%=rs.getString("isbn")%>">加入购物车</a></h3>
	 <h3 align="center"><a href="index.jsp">返回</a></h3>
<%
	  	}
	}else{
	msg="对不起没有这本书";
	out.print(msg);
	response.setHeader("Refresh", "1;url=index.jsp");
}

%>

<script >window.alert('<%=msg%>')</script>

<jsp:include page="foot.html"></jsp:include>
</body>
</html>