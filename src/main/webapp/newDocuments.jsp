<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form action="/employee/newdocuments" method="post">
    <table>
      <tr><td><h4>Insert ${username } documents below:</h4></td></tr>
			<tr>
				<td>Employee documents id: <input type="number" name="id" value="${id }"/></td>
			</tr>
			<tr>
				<td>Policies: <input type="text" name="policies" value="pending"/></td>
			</tr>
			<tr>
				<td>Assignments: <input type="text" name="assignments" value="pending"/></td>
			</tr>
			<tr>
				<td>Onboarding: <input type="text" name="onboarding" value="pending"/></td>
			</tr>
	
			
				<tr><td><input type="Submit" value="SUBMIT"/></td>
			</tr>
   
		</table>
	</form>
      
</body>
</html>