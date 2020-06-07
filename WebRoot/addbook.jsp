<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>添加图书页面</title>

  </head>
  
  <body>
  <div id="container">
  <div id="header" style="background-color:#CCBBFF;text-align:center;">
  <h3>添加图书</h3></div>
  <div id="content" style="background-color:#EEEEEE;height:200px;text-align:center;">

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
		<a href="bookServlet"><button>取消添加</button></a><br>
	</form>
  
  </div>
  <div id="footer" style="background-color:#CCBBFF;clear:both;text-align:center;">
  <a href="index.jsp"><button>回首页</button></a></div>
	</div>
    

  </body>
</html>
