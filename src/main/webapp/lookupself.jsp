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
		</table>
	</form>
	<h1>Employee Training</h1>
	<form>
		<table>
			<tr>
				<td>Python:</td>
				<td>${pythonFromDB }</td>
			</tr>
			<tr>
				<td>Java:</td>
				<td>${javaFromDB }</td>
			</tr>
			<tr>
				<td>Mysql:</td>
				<td>${mysqlFromDB }</td>
			</tr>
			<tr>
				<td>Javascript:</td>
				<td>${jsFromDB }</td>
			</tr>
		</table>
	</form>
	<h1>Employee Documents</h1>
	<form>
		<table>
			<tr>
				<td>Onboarding:</td>
				<td>${onboardingFromDB }</td>
			</tr>
			<tr>
				<td>Assignments:</td>
				<td>${assignmentsFromDB }</td>
			</tr>
			<tr>
				<td>Policies:</td>
				<td>${policiesFromDB }</td>
			</tr>

		</table>
	</form>
<a href="/hero.jsp"><button>Return</button></a>

</body>
</html>