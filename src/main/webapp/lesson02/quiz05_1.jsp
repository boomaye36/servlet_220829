<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int len = Integer.valueOf(request.getParameter("length"));
	double inch = len * 0.39;
	double yard = len * 0.01;
	double feet = len * 0.03;
	double meter = len * 0.01;
	
	String[] change = request.getParameterValues("len");


%> 

	<h1>길이 변환 결과</h1>
	<h2 class="text-bold"><%=len %>cm</h2>
	<hr>
	<h2>
	<%
		
		String result ="";
		for(String length : change){
			if(length.equals("inch")){
				out.print(inch + "in<br>");
			}else if(length.equals("yard")){
				out.print(yard + "yd<br>");
			}else if(length.equals("feet")){
				out.print(feet + "feet<br>");
			}else if(length.equals("meter")){
				out.print(meter + "m<br>");
			}
		}
			
		
	
	%>
	</h2>
</body>
</html>