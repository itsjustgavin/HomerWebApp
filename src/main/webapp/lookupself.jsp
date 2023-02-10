<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Hero look up self</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}
.center {
margin: auto;
padding: auto;
text-align: center;
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

 .container {
margin-left: 35%;
}
#TekHeroesLogo1 { width: 10%;
position: relative;
display: inline-block;
z-index: 1;

			
}
#printButton{

}

#body {
position: relative;
  min-height: 100vh;
}
</style>
</head>
<body id="body">

<%@ include file = "heroheader.jsp" %>






<h1 class="center">Training and Documents</h1>



<div class="container-fluid">

	<h1>Employee info</h1>
	<form>
		<table border="2px" colspan='2' align='center'>
			<tr>
				<td>First Name</td>
				<td style="width:60%">${fnameFromDB }</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td style="width:60%">${lnameFromDB }</td>
			</tr>
			<tr>
				<td>Email</td>
				<td style="width:60%">${emailFromDB }</td>
			</tr>
			<tr>
				<td>Username</td>
				<td style="width:60%">${userNameFromDB }</td>
		</table>
	</form>
	<h1>Employee Training</h1>
	<form >
		<table border="2px" colspan='2' align='center'>
			<tr>
				<td>Python:</td>
				<td style="width:60%">${pythonFromDB }</td>
			</tr>
			<tr>
				<td>Java:</td>
				<td style="width:60%">${javaFromDB }</td>
			</tr>
			<tr>
				<td>Mysql:</td>
				<td style="width:60%">${mysqlFromDB }</td>
			</tr>
			<tr>
				<td>Javascript:</td>
				<td style="width:60%">${jsFromDB }</td>
			</tr>
		</table>
	</form>
	<h1>Employee Documents</h1>
	<form>
		<table border="2px" colspan='2' align='center'>
			<tr>
				<td>Onboarding:</td>
				<td style="width:60%">${onboardingFromDB }</td>
			</tr>
			<tr>
				<td>Assignments:</td>
				<td style="width:60%">${assignmentsFromDB }</td>
			</tr>
			<tr>
				<td>Policies:</td>
				<td style="width:60%">${policiesFromDB }</td>
			</tr>

		</table>
	</form>
	
		<div id="printButton" style="margin-top: 2%"><button class="bg-danger btn btn-lg text-light" onclick="window.print()">Print this page</button></div>
	
	</div>


<footer>
<%@ include file = "footer.jsp" %></footer>
</body>
</html>