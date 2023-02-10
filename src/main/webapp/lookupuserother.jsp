<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Hero Dashboard</title>
<style>

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #D6EEEE;
}
.navstuff {
position: relative;
display: inline-block;
margin-left: 30%;
margin-top: 0;
margin-bottom: 0;
overflow: hidden;
}
.navstuff a.active {
  background-color: #04AA6D;
  color: white;
}
.navstuff  a:hover {
  background-color: #d9534f;
  color: white;
}

.navstuff a {
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
}
 .container {
margin-left: 35%;
}
#TekHeroesLogo1 { width: 10%;
position: relative;
display: inline-block;
z-index: 1;

			
}


</style>
</head>
<body>
<%@ include file = "heroheader.jsp" %>
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
	<div class="container-fluid">
	<div style="margin-top: 2%"><button class="bg-danger btn btn-lg text-light" onclick="window.print()">Print this page</button></div></div>
	
<%@ include file = "footer.jsp" %>

</div>
</body>
</html>