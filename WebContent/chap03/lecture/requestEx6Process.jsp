<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
<%
Set<Integer> lotto = new HashSet<>();
while (lotto.size() < 6) {
 lotto.add((int) (Math.random()*45 + 1)); 
}

out.print("당첨번호:");
out.print(lotto);
out.print("<br>");
%>
<% String[] num = request.getParameterValues("num");
int[] num2 = new int[num.length];

for(int i = 0; i<num.length; i++){
   num2[i] = Integer.parseInt(num[i]);
}
%>
선택한 번호 :<%
if(num2 != null){
	for(int i = 0; i<num2.length; i++){
		out.print(num2[i]);
		if(i != num2.length-1){
			out.print(",");
		}
	}
}
%><br>
<%int c = 0;

for(int i= 0; i<num2.length; i++){
	for(int s : lotto){
		if(num2[i] == s){
			c++;
		}
	}
}
	%>
맞춘 갯수 :<%= c%>개



</body>
</html>










