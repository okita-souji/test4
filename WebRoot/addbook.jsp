<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>添加图书页面</title>

  </head>
  
  <body>
    <h3>添加图书：</h3><a href="bookServlet"><button>返回上一层</button></a><br>
	<form action="addbookServlet"><!-- action是把数据上传到servlet的行为 -->
		书名：<input type="text" name="name"/><br>
		作者：<input type="text" name="author"/><br>
		出版社：<select name="press">
				<option value="人民教育出版社">人民教育出版社</option>
				<option value="清华出版社">清华出版社</option>
				<option value="北大出版社">北大出版社</option>
				<option value="智游出版社">智游出版社</option>
			</select><br>
		价格：<input type="number" name="price"/><br>
		<input type="submit" value="确认添加"/>
	</form>

  </body>
</html>
