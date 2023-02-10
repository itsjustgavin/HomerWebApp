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
<title>Hero Contacts</title>
<style>
.center {
margin: auto;
padding: auto;
text-align: center;
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
#body {
position: relative;
  min-height: 100vh;
}
#searchDiv{
margin-bottom: 5%;
}
#footerDiv {
margin-top: 30px;

}
</style>
</head>
<body id="body">
<%@ include file = "heroheader.jsp" %>
<h1 class="center">Employee Contacts</h1>
<br>
<div class="center">
<h3>Find coworker contact info by first and last name:</h3>
<form class="center" action="/employee/lookupother" method="post">
		<table class="center">
			<tr>
				<td>Look up Employee by first name</td>
				<td><input type="text" name="fname"></td>

			</tr>
			<tr>
				<td>Look up Employee by last name</td>
				<td><input type="text" name="lname"></td>
			</tr>
			<tr>
				<td><input class="btn btn-info btn-m bg-danger center" type="Submit" value="SUBMIT" /></td>
			</tr>
		</table>
	</form>
	<br>
	<h3 class="center">Find coworker contact info by username:</h3>
	<form  class="center"action="/employee/lookupuserother" method="post">
		<table class="center">
    
      <tr><td><h4>Insert Employee info below</h4></td></tr>
  
			<tr>
				<td>Employee Username: <input type="text" name="username" /></td><td><input class="btn btn-info btn-m bg-danger" type="Submit" value="SUBMIT"/></td>
			</tr>
			
		</table>
		</form></div>
		<br>
		<div id="searchDiv">
		<h3 class="center">Search All Employees</h3>
		<form class="center" action="/employee/searchallfromhero" method = "POST">
		<input class="bg-danger btn btn-lg text-light center" type="Submit" value="Search all Employees"/>
		</form>
		</div>
		
		<div id="footerDiv">
		<%@ include file = "footer.jsp" %>
		</div>
</body>

</html>