<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.User2" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<User2> userList = new ArrayList<>();
userList.add(new User2("ironman", "ny", 50));
userList.add(new User2("cap", "seoul", 40));
userList.add(new User2("spider", "la", 30));
userList.add(new User2("hulk", "jeju", 33));
userList.add(new User2("thor", "asgard", 22));
userList.add(new User2("panther", "busan", 11));

request.setAttribute("users", userList);
%>

<jsp:forward page="subEx4.jsp" />



