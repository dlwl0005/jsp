<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="chap05.Post" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8"); %>
<%
String title = request.getParameter("title");
String body = request.getParameter("body");


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
<h1>방명록</h1>

<form action="jstlEx25Process.jsp" method="post">
제목: <input type="text" name ="title"> 
<br>
<textarea name="body" rows="3" cols="30"></textarea>
<br>
<input type="submit" value="등록">
</form>
<hr>
<c:if test="${empty list }">
<h3>목록없음</h3>
</c:if>
<c:if test="${not empty list }">
<ul>
<c:forEach items="${list }" var="item" varStatus="stat">
<li><a href="jstlEx25Detail.jsp?id=${stat.index }">${item.title }</a></li>
</c:forEach>
</ul>
</c:if>
</body>
</html>