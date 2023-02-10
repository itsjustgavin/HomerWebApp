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
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  
<title>HR Dashboard</title>
<style>

 .container {
margin-left: 35%;
}
#TekHeroesLogo1 { width: 10%;
				height: 10%;
				margin-right:100%;
			
}


</style>
</head>
<body>
<%@ include file = "hrheader.jsp" %>
<div class="container-fluid">
	<!-- Need to log in a user first, need viewdata servlet -->
<%-- 	<form>
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
	</div> --%>
	</div>

	<div class="container-fluid">
<h2>${updated }</h2>
	<!-- Employee CRUD START -->
	<div class="container">	<h2>Look up employee by first and last name</h2>
	<!-- Trigger the modal with a button -->
	
	 <button type="button" class="btn btn-info btn-lg bg-danger" data-toggle="modal" data-target="#myModalNames" >Look up by Name</button>
	  <!-- Modal -->
	   <div class="modal fade" id="myModalNames" role="dialog">
    <div class="modal-dialog model-sm">
      <div class="modal-content bg-danger border border-dark text-light text-center">
      <h2>Look up Employee by first and last name</h2>
    <form action="/employee/lookup" method="post">
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
				<td><input class =" btn btn-s bg-dark text-light"type="Submit" value="SUBMIT" /></td>
			</tr>
		</table>
	</form>
	</div>
    </div>
    </div>
	
	</div>
</div>
	<div class="container">
  <h2>Look up user</h2>
  <!-- Trigger the modal with a button -->
 
  <button type="button" class="btn btn-info btn-lg bg-danger" data-toggle="modal" data-target="#myModal" >Look up by User</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog model-sm">
    
      <!-- Modal content-->
        <div class="modal-content bg-danger border border-dark text-light text-center">
        <div class="modal-header border border-dark">
     	<h2 class="modal-title border-dark">Look up User</h2>
     	</div>
	<form action="/employee/lookupUser" method="post">
		<table>
    
      <tr>
      <td>
      <h2>Insert Employee info below</h2>
      </td>
      </tr>
			<tr>
				<td class="text-center">Employee Username: <input type="text" name="username" /></td>
			</tr>
			<tr>
				<td><input class =" btn btn-s bg-dark text-light" type="Submit" value="SUBMIT"/></td></tr>
		</table>
		</form></div>
    </div>
  </div>
  
</div>
	
	
	<div class="container">

<h2>Search All Employees</h2>
		<form action="/employee/searchallfromhr" method = "POST">
		<input class="bg-danger btn btn-lg text-light" type="Submit" value="Search all Employees"/>
		</form>

</div>


<div class="">
<div id="containerButton"class="container-fluid fixed-bottom mb-5">
	<form action="/logout" method="post">
<input id="logoutButton"class="btn btn-info btn-lg bg-danger" type="submit" value="Logout">

</form></div>
</div>
<%@ include file = "footer.jsp" %>



</body>
</html>