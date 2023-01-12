<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${error}
<form action = "/employee/login" method ="post">
	<table>
		<tr><td>Username:</td><td><input type="text" name="username"/></td></tr>
		<tr><td>Password:</td><td><input type="password" name="passcode"/></td></tr>
		<tr><td colspan='2' align='center'><input type="submit" value = "login"/></td></tr>
	</table>
</form>
</body>
</html>