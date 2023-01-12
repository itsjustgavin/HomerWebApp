<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/employeeDocumentsUpdate" method="post">
<table>
     <tr><td><h4>Insert Employee Documents below:</h4></td></tr>
			<tr>
				<td>Employee id: <input type="text" name="id" value = "${id}"/></td>
			</tr>
			<tr>
				<td>Employee Onboarding: <input type="text" name="onboarding" value="${onboarding }"/></td>
			</tr>
			<tr>
				<td> Employee Policies: <input type="text" name="policies" value="${policies }"/></td>
			</tr>
			<tr>
				<td>Employee Assigments: <input type="text" name="assignments" value="${assignments}"/></td>
			</tr>
		 
				<tr>
					<td><input type="Submit" value="SUBMIT" value="register" /></td>
				</tr>
			</table></form>
</body>
</html>