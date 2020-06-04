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
	<h3>图书管理：</h3><a href="addbook.html"><button>添加图书</button></a>&nbsp;&nbsp;
	<a href="index.html"><button>退出</button></a><br><br>
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

  </body>
</html>
