<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link" href="/lookupself.jsp">Trainings and Documents</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/employeecontacts.jsp">Employee Contacts</a>
  </li>
</ul>
</header>
<h2>Welcome ${userNameFromDB }</h2>
	<!-- Need to log in a user first, need viewdata servlet -->
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

			</tr>
		</table>
	</form>

<form action="/logout" method="post">
<input type="submit" value="Logout">
</form>



<form method="post" action="/uploadFile.jsp" enctype="multipart/form-data">
<input type="file" name="file"> 
<input type="submit" value="Upload">
</form>




</body>
</html>