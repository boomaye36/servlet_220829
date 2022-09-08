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
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
				while (result.next()){
			%>
			<tr>
				<td><%=result.getString("name") %></td>
				<td><a href="<%=result.getString("url") %>" target="_blank"><%=result.getString("url") %></a></td>
				<td><a href="/lesson04/quiz02_delete?id=<%=result.getInt("id")%>" class="btn btn-danger">삭제하기</a></td>
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