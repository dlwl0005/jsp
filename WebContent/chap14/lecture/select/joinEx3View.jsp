<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%
    String eno = request.getParameter("eno");
    String sql = "SELECT ename, salary, grade FROM employee, salgrade WHERE salary BETWEEN losal and hisal and eno=?";
    Class.forName("oracle.jdbc.driver.OracleDriver");
   	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
   	String user = "c##mydbms";
   	String password = "admin";
   	Connection con = DriverManager.getConnection(url, user, password);
   	PreparedStatement pstmt = con.prepareStatement(sql);
   	pstmt.setInt(1, Integer.valueOf(eno));
   	ResultSet rs = pstmt.executeQuery();
   	String ename = "";
   	int salary = 0;
   	int grade = 0;
   	if(rs.next()){
   		ename = rs.getString(1);
   		salary = rs.getInt(2);
   		grade = rs.getInt(3);
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
<h1>이름:<%=ename %></h1>
<h1>봉급:<%=salary %></h1>
<h1>등급:<%=grade %>등급</h1>
</body>
</html>