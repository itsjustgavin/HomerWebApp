<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Find coworker contact info by first and last name:</h3>
<form action="/employee/lookupother" method="post">
		<table>
			<tr>
				<td>Look up Employee by first name</td>
				<td><input type="text" name="fname"></td>

			</tr>
			<tr>
				<td>Look up Employee by last name</td>
				<td><input type="text" name="lname"></td>
			</tr>
			<tr>
				<td><input type="Submit" value="SUBMIT" /></td>
			</tr>
		</table>
	</form>
	
	<h3>Find coworker contact info by username:</h3>
	<form action="/employee/lookupuserother" method="post">
		<table>
    
      <tr><td><h4>Insert Employee info below</h4></td></tr>
			<tr>
				<td>Employee Username: <input type="text" name="username" /></td>
			</tr>
			
				<td><input type="Submit" value="SUBMIT"/></td>
		</table>
		</form>
		
		<a href="/hero.jsp"><button>Return</button></a>
</body>
</html>