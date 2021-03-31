<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <title>头</title>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
   <link rel="stylesheet" href="head.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
<div class="container-fluid">
<div class="row"align="center" >
<table>
<tbody><tr>
	<td height="11"></td>
</tr>
</tbody></table>

<table >
<tbody><tr>
	<td width="66"><a href="index.jsp"><img src="image/kkk.jpg" width="200" height="110" border="0"></a></td>
	<td><form action="sousuo.jsp" method="post">
	<table>
	<tbody><tr>
	<td>
	<div class="da_text"><ul class="nav nav-pills">
   <li><a href="index.jsp" >来选书</a></li>
   <li><a href="gouwuche.jsp">购物车</a></li>
   <li><a href="login.html">用户登录</a></li>
   <li><a href="login.html">管理员登录</a></li>
   <li><a href="root.jsp">返回首页</a></li>
   <li><a href="vivi.jsp">联系我们</a></li></ul>
   </div></td>
		<!--<td><a href="index.jsp"><img src="image/guanyushudian.jpg" border="0"></a></td>
		<td><a href="index.jsp"><img src="image/kk.jpg" border="0" width="100"></a></td>
		<td><a href="login.html"><img src="image/denglushudian.jpg" border="0"></a></td>
		<td><a href="login.html"><img src="image/guanliyuan.jpg" border="0"></a></td>
		<td><a href="root.jsp"><img src="image/fanhui.jpg" border="0"></a></td>-->
		<td><span class="glyphicon glyphicon-search"></span>&nbsp;

		<input type="text" name="sou" checked="checked" value="" height="20">
		<td>&nbsp;&nbsp;<button class="btn btn-danger" type="submit">搜索</button>&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><%if(session.getAttribute("id")==null) {out.print("对不起你还未登陆<br><a href=\"login.html\">点击登录</a>");}%>
  			<%if(session.getAttribute("id")!=null) {out.print(session.getAttribute("id")+"你已登陆<br><a href=\"close.jsp\">注销</a>");}%>
        </td>
	</tr>
	</tbody></table></form>
	</td>
</tr>
</tbody></table>
</div>
</div>
<div  >
<div class="text">
<table class="table">
<tbody><tr>
	<!-- 下拉导航栏 -->
	<td height="11">   <ul class="nav nav-pills nav-justified" ><!-- 下拉导航栏 -->
   	<li class=""><a href="">文学类</a></li>
   	<li><a href="#">科技类</a></li>
   	<li><a href="">人文类</a></li>
   	<li><a href="#">小说类</a></li>
   	<li class="dropdown">
     	 <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          	 程序人生<span class="caret"></span> </a>
     	 <ul class="dropdown-menu">
         <li><a href="">C语言</a></li>
         <li><a href="#">JAVA</a></li>
         <li><a href="">Python</a></li>
         <li class="divider"></li>
         <li><a href="">很多很多</a></li>
     	 </ul>
  	</li>
   	<li><a href="#">店长最爱</a></li></ul> </td>
</tr>
</tbody></table>
</div>
   </div>
</body>
</html>