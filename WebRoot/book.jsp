<%@page import="utils.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>图书系统</title>

  </head>
  
  <body>
    <%
		User user=(User)request.getAttribute("user");//得到servlet传来的属性“user”
		String username=user.getUsername();
	%>
	<h3>图书系统</h3>&nbsp;&nbsp;&nbsp;&nbsp;用户名：<%=username %>&nbsp;&nbsp;
	<a href="index.html"><button>退出</button></a><br><br>
	<form action="bookServlet">
		<button>查询图书信息</button>
	</form>

  </body>
</html>
