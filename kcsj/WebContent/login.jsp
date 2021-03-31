<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%@page import="beans.admin"%>
        <%@page import="java.util.* "  import="util.DBUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
<link rel="stylesheet" href="head.css">  
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("GBK"); %>
<%
			String flag=(String)request.getAttribute("flag");
			String id=request.getParameter("id");
			session.setAttribute("id", id);
			String password=request.getParameter("password");//ok
			admin ad=new admin();//登录验证
			String msg="欢迎登陆";
			try{
				if(ad.checkRoot(id)){
				if(ad.checkLogin(id,password)){
				response.setHeader("Refresh", "1,showadmin.jsp");}
				//else
					// msg="密码错误";
				    // response.setHeader("Refresh", "1,login.html");
			}
			else {
			if(ad.checkLogin(id,password)){
				response.setHeader("Refresh", "1,index.jsp");
			} else{
				msg="密码错误";
				response.setHeader("Refresh", "1,login.html");
			}
			}}catch (Exception e){
				e.printStackTrace();
				msg="用户名不存在或密码不存在";
				response.setHeader("Refresh", "1,login.html");
			}
			
			
			%>	
<script>window.alert('<%= msg%>');</script>
</body>
</html>