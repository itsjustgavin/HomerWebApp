<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${username}</h1>
	<form action="/employee/newtraining" method="post">
		<table>
			<tr>
				<td><h4>Insert Employee trainings below:</h4></td>
			</tr>
			<tr>
				<td>Employee Training id: <input type="number" name="id" value="${id}" /></td>
			</tr>
			<tr>
				<td>Python: <input type="text" name="python" value="pending" /></td>
			</tr>
			<tr>
				<td>Java: <input type="text" name="java" value="pending" /></td>
			</tr>
			<tr>
				<td>Employee My_Sql: <input type="text" name="MY_sql"
					value="pending" /></td>
			</tr>
			<tr>
				<td>Javascript: <input type="text" name="javascript"
					value="pending" /></td>
			</tr>
				
				<tr><td><input type="Submit" value="SUBMIT"/></td>
			</tr>
		</table>
	</form>
</body>
</html>