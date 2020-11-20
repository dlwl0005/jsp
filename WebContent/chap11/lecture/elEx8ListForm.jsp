<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
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
<h1>종아하는 음식들 선택</h1>
<form action="elEx8ListView.jsp">
<label for="">딸기<input type="checkbox" name="food" value="berry"></label>
<label for="">포도<input type="checkbox" name="food" value="grape"></label>
<label for="">바나나<input type="checkbox" name="food" value="banana"></label>
<label for="">우유<input type="checkbox" name="food" value="milk"></label>
<label for="">커피<input type="checkbox" name="food" value="coffe"></label>
<br>
<input type="submit" value="등록">
</form>
</body>
</html>