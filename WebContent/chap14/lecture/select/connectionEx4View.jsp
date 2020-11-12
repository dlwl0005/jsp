<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <%request.setCharacterEncoding("utf-8"); %>
     <%
    String dno = request.getParameter("dno");
     if(dno == null || dno.isEmpty()){
    	 dno = "0";
     }
    String sql= "SELECT loc FROM department WHERE dno= " + dno;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    String id="c##mydbms";
    String pw = "admin";
    Connection con = DriverManager.getConnection(url, id, pw);
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    String loc = "없음";
    if(rs.next()){
    	loc = rs.getString("loc");
    }
    stmt.close();
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
<%= loc %><br>
<a href="connectionEx4Form.jsp">뒤로</a>
</body>
</html>