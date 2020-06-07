<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>用户注册</title>

  </head>
  
  <body>
	<div id="container">
  <div id="header" style="background-color:#CCBBFF;text-align:center;">
  注册</div>
  <div id="content" style="background-color:#EEEEEE;height:200px;text-align:center;">
<form action="registerServlet">
		用户名：<input type="text" name="username"/><br>
		密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"/><br>
		生&nbsp;&nbsp;&nbsp;日：<input type="date" name="birthday"/><br>
		性&nbsp;&nbsp;&nbsp;别：
		<input type="radio" name="gender" value="男"/>男
		<input type="radio" name="gender" value="女"/>女<br>
		<input type="submit" value="注册"/>
		<input type="reset" value="清空"/>
	</form>
 

  </div>
  <div id="footer" style="background-color:#CCBBFF;clear:both;text-align:center;">
  <a href="index.jsp"><button>回首页</button></a></div>
	</div>

  </body>
</html>


