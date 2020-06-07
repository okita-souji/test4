<%@ page import="java.util.ArrayList" %>
<%@ page import="utils.Book" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>图书查询</title>

  </head>
  
  <body>
    <%
		ArrayList<Book> booklist=(ArrayList<Book>)session.getAttribute("booklist");
	%>
	<div id="container">
  <div id="header" style="background-color:#CCBBFF;text-align:center;">
  <h3>图书管理</h3><a href="addbook.html"><button>添加图书</button></a></div>
  <div id="content" style="background-color:#EEEEEE;height:200px;text-align:center;">
	<table border="1px" cellspacing="0px">
		<tr><td>编号</td><td>书名</td><td>作者</td><td>出版社</td><td>价格</td></tr>
		<%
		for(Book book:booklist){//遍历“booklist”属性，获取里面的值
			int id=book.getId();
			String name=book.getName();
			String author=book.getAuthor();
			String press=book.getPress();
			double price=book.getPrice();
		%>
		<tr><td><%=id %></td>
		<td><%=name %></td>
		<td><%=author %></td>
		<td><%=press %></td>
		<td><%=price %></td>
		<td><a href="updateServlet?id=<%=id%>&name=<%=name%>&author=<%=author%>&press=<%=press%>&price=<%=price%>">
		<button>修改</button></a></td>
		<td><a href="deleteServlet?id=<%=id%>"><button>删除</button></a></td></tr>
		<%}
		%>
	</table>
 
  </div>
  <div id="footer" style="background-color:#CCBBFF;clear:both;text-align:center;">
  <a href="index.jsp"><button>回首页</button></a></div>
	</div>
  </body>
</html>
