<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		Calendar hundred = Calendar.getInstance();
		;
	
		%>
		<b>오늘부터 1일</b><br>
		<%
		for (int i = 1; i < 11; i++){
			hundred.add(Calendar.DATE, 100);
			out.print(i*100 + "일:" + sdf.format(hundred.getTime()));
		}
	%>
</body>
</html>