<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>图书系统首页</title>
  <style type="text/css">
  h1{text-align:center}
 h4{text-align:left;color:red;}

 a{text-decoration:none;font-size:20px;color:black;}
 a:hover{text-decoration:underline;font-size:24px;color:red;}    
 </style>
  </head>
  <body>
	<div id="container">
 
	<div id="header" style="background-color:#CCBBFF;">
	<h1>图书系统首页</h1>
  <h4>欢迎您</h4>	
	</div>
 <div>

	<div id="menu" style="background-color:#CCDDFF;height:200px;width:100px;;float:left;">
	<b>菜单</b>
	<table align="center">
     <tr>
             <td colspan="1">
             </td>
             <td>
               <a href="login.jsp"><button>登录</button></a>
               <a href="register.jsp"><button>注册</button></a>
             </td>
        </tr>
	</table></div>
 
	<div id="content" style="background-color:#EEEEEE;height:200px;text-align:center;">
内容在这里


</div>
</div>
 
     
<div id="footer" style="background-color:#CCBBFF;clear:both;text-align:center;">
@西北农林科技大学</div>
</div>
  </body>
</html>
