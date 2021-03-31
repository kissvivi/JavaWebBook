<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@ page import="java.util.*" %>
        <%@ page import="beans.Books" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="head.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>首页</title>
</head>
<body>
<%//request.setCharcterEncoding("GBK"); %>
<jsp:include page="head.jsp"></jsp:include>
<table class="table">
<tbody><tr>
	<td></td>
</tr>
</tbody></table>

<% 
request.setCharacterEncoding("GBK");
Books book=new Books();
ResultSet rs=book.Dchaxun();
while(rs.next()){
%>
<table width="75%" border="0" align="center" class="table-responsive">

<tr>

<td>

	<a href="jianjie.jsp?isbn=<%=rs.getString("isbn")%>">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td>
<td>
	        书名：<%=rs.getString("book_name")%><br>
	        作者：<%=rs.getString("zuozhe")%><br>
	    ISBN：<%=rs.getString("isbn")%><br>
	        出版社：<%=rs.getString("chubanshe")%><br>
	        定价：<b class="redf" style="color:#ff3e3e"><%=rs.getString("danjia")%></b><br>
	        <h5><a href="goodstianjia.jsp?isbn=<%=rs.getString("isbn")%>">加入购物车</a></h5>
	        </td>
<%if(!rs.next()) break; %> 
	        <td>

	<a href="jianjie.jsp?isbn=<%=rs.getString("isbn")%>">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td>
<td>
	        书名：<%=rs.getString("book_name")%><br>
	        作者：<%=rs.getString("zuozhe")%><br>
	    ISBN：<%=rs.getString("isbn")%><br>
	        出版社：<%=rs.getString("chubanshe")%><br>
	        定价：<b class="redf" style="color:#ff3e3e"><%=rs.getString("danjia")%></b><br>
	        <h5><a href="goodstianjia.jsp?isbn=<%=rs.getString("isbn")%>">加入购物车</a></h5>
	        </td>
  <%if(!rs.next()) break; %>

	           <td>

	<a href="jianjie.jsp?isbn=<%=rs.getString("isbn")%>">
	<img src="<%= rs.getString("image")%>" width="200" height="250" border="0" name="yuzui">
	</a>
</td>
<td>
	        书名：<%=rs.getString("book_name")%><br>
	        作者：<%=rs.getString("zuozhe")%><br>
	    ISBN：<%=rs.getString("isbn")%><br>
	        出版社：<%=rs.getString("chubanshe")%><br>
	        定价：<b class="redf" style="color:#ff3e3e"><%=rs.getString("danjia")%></b><br>
	        <h5><a href="goodstianjia.jsp?isbn=<%=rs.getString("isbn")%>">加入购物车</a></h5>
	        </td>
</tr><%}%>
</table> 


<jsp:include page="foot.html"></jsp:include>
</body>
</html>
