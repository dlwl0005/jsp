<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
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
<script>
$(function() {
	$("#modify-btn").click(function () {
		$("#title-input").removeAttr("readonly");
		$("#body-textarea").removeAttr("readonly");
		$(this).hide();
		$("#submit-btn").removeAttr("hidden");
	});
	$("#remove-btn").click(function() {
		var c = confirm("삭제하시겠습니까?");
		if(c){
			location.href="remove?idx=${param.idx}";
		}
	});
	
});
</script>
</head>
<body>
<c:url value="/sample2/modify" var="modifyUrl">
<c:param name="idx">${param.idx }</c:param>
</c:url>

<div class="container">
<form action="${modifyUrl }" method="post">
제목: <input name="title" id=tittle-input type="text" readonly value="${post.title}">
<br>
<textarea name="body" id="body-textarea" rows="3" cols="30" readonly="readonly">${post.body}</textarea><br>
<input type="submit" class="btn btn-secondary" value="등록" hidden id="submit-btn">
</form>
<button class="btn btn-secondary" id="modify-btn">수정</button>
<br>
<button class="btn btn-danger" id="remove-btn">삭제</button>
</div>
</body>
</html>