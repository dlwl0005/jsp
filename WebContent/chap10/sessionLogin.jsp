<%@page import="sun.nio.cs.HistoricallyNamedCharset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%request.setCharacterEncoding("utf-8"); %>
    <%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    if(id.equals(password)){
    	session.setAttribute("MEMBERID", id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인 성공</title>
</head>
<body>
<form action="sessionLogout.jsp">
<input type="submit" value="로그아웃"/>
</form>
로그인에 성공했습니다.
</body>
</html>
<%
    }else{//로그인 실패시
%>

<script>
alert("로그인에 실패하였습니다.");
history.go(-1);
</script>

<%
    }
%>