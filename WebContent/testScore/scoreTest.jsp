<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	int score = Integer.parseInt(request.getParameter("score"));
	
	System.out.println("score : " + score);
	
	if(score > 100 || score < 0) {
		response.sendRedirect("/testScore/scoreTest.html"); 
	} 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 입력하신 시험점수는 <%=score %>점 입니다.</h1>
<%
	if (score>=90) { %>
		<h1>'A'입니다.</h1>
<%	} else if(score>=80) { 	%>
	<h1>'B'입니다.</h1>
<%	} else { %>
	<h1>'C'입니다.</h1>
<%	} 
%>
</body>
</html>