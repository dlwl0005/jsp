<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%
    String grade = request.getParameter("grade");
    String sql = "SELECT ename FROM employee,salgrade WHERE salary BETWEEN losal and hisal and grade=?";
    Class.forName("oracle.jdbc.driver.OracleDriver");
   	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
   	String user = "c##mydbms";
   	String password = "admin";
   	Connection con = DriverManager.getConnection(url, user, password);
   	PreparedStatement pstmt = con.prepareStatement(sql);
   	pstmt.setInt(1, Integer.valueOf(grade));
   	ResultSet rs = pstmt.executeQuery();
   	List<String> list = new ArrayList<>();
   	while(rs.next()){
   		list.add(rs.getString(1));
   	}
   	pstmt.close();
   	con.close();
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
<h1><%= grade  %>등급의 사원</h1>
<ul>
<%
for (String name : list) {
%>
  <li><%= name %></li>
<%
}
%>
</ul>
</body>
</html>