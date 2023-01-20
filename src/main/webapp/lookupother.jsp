<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Employee info</h1>
	<form>
		<table border="2px">
			<tr>
				<td>First Name</td>
				<td>${fnameFromDB }</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td>${lnameFromDB }</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${emailFromDB }</td>
			</tr>
			<tr>
				<td>Username</td>
				<td>${userNameFromDB }</td>
				<tr><td>Phone number</td>
				<td>${phonenumberFromDB}</td>
				
			</tr>
			<tr>
			<td>Company role</td>
			<td>${emproleFromDB}</td>
			</tr>
		</table>
	</form>
	<a href="/hero.jsp"><button>Return</button></a>
</body>
</html>