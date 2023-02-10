<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/employeeTrainingUpdate" method="post">
<table>
     <tr><td><h4>Insert Employee trainings below:</h4></td></tr>
			<tr>
				<td>Employee Training id: <input type="text" name="id" value = "${id}"/></td>
			</tr>
			<tr>
				<td>Python: <input type="text" name="python" value="${python }"/></td>
			</tr>
			<tr>
				<td>Java: <input type="text" name="java" value="${java }"/></td>
			</tr>
			<tr>
				<td>Employee My_Sql: <input type="text" name="MY_sql" value="${my_sql}"/></td>
			</tr>
			<tr>
				<td>Javascript: <input type="text"
					name="javascript" value="${javascript }"/></td>
					
			</tr> 
				<tr>
					<td><input type="Submit" value="SUBMIT" value="register" /></td>
				</tr>
			</table></form>
			
		<%@ include file = "footer.jsp" %>


</body>
</html>