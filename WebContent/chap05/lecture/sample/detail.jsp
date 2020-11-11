<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="chap05.Post" %>
    <%request.setCharacterEncoding("utf-8"); %>
    <%
    List<Post> list =(List<Post>) application.getAttribute("list");
    int id = Integer.parseInt(request.getParameter("id"));
 	String title = request.getParameter("title");
    String body = request.getParameter("body"); 		
    Post post = list.get(id);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
제목 :<input type="text" value ="<%=post.getTitle()%>" readonly="readonly">
<br>
<textarea rows="10" cols="30" readonly="readonly"><%= post.getBody() %></textarea><br>
<a href="post.jsp">게시물</a>
</body>
</html>