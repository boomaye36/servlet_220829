<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
 <%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%
	int sum = 0;
	for (int i = 0; i <= 50; i++){
		sum += i;
	}

%>
<h2>1부터 50까지의 합은 <%=sum %></h2>


<%
	int s = 0;
	int[] scores = {80, 90, 100, 95, 80};
	for (int i = 0; i < 5; i++){
		s += scores[i];
	}
	
%>
<h2>평균 점수는 <%=s / 5.0 %></h2>

<%
	int score = 0;
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	for (int i = 0; i < scoreList.size(); i++){
		if (scoreList.get(i).equals("O")){
			score += 10;
		}
	}
%>
<h2>채점 결과는 <%=score %></h2>

<%
	String birthDay = "20010820";
	String sub = birthDay.substring(0,4);
	int birthday = Integer.parseInt(sub);
	int age = 2022 - birthday + 1;
	
%>
<h2>20010820의 나이는 <%=age %></h2>

</body>
</html>