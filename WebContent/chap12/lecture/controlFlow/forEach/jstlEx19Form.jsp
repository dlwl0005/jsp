<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8"); %>  
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
<h1>foreach 연습</h1>
<form action="jstlEx19View.jsp">
<label>바나나<input type="checkbox" name="food" value="banana"></label>
<label>물<input type="checkbox" name="food" value="water"></label>
<label>커피<input type="checkbox" name="food" value="coffee"></label>
<label>사탕<input type="checkbox" name="food" value="candy"></label>
<label>초콜릿<input type="checkbox" name="food" value="choco"></label>

<br>
<input type="submit" value="등록">
</form>
</body>
</html>