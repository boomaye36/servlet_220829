<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MysqlService mysql = MysqlService.getInstance();
	mysql.connect();
	
	String selectQuery = "select * from website";
	ResultSet result = mysql.select(selectQuery);
%>
	<table>
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		<tbody>
			<%
				while (result.next()){
			%>
			<tr>
				<td><%=result.getString("name") %></td>
				<td><a href="<%=result.getString("url") %>" <%=result.getString("url") %></a></td>
			</tr>
			<%
				}
			%>
		</tbody>	
	</table>
	<%
		mysql.disconnect();
	%>
</body>
</html>