<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
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
	  <div class="container">
  <h2>Insert Employee</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">New Employee</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
     	<h1>Insert employee</h1>
	<form action="/employee/new" method="post">
		<table>
      
      <tr><td><h4>Insert Employee info below</h4></td></tr>
			<tr>
				<td>Employee First Name: <input type="text" name="fname" /></td>
			</tr>
			<tr>
				<td>Employee Last Name: <input type="text" name="lname" /></td>
			</tr>
			<tr>
				<td>Employee email: <input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Employee Role: <input type="text" name="emprole" /></td>
			</tr>
			<tr>
				<td>Employee Phone Number: <input type="text"
					name="phonenumber"/></td>
			</tr>
			<tr>
				<td>Employee Hourly Wage: <input type="number" name="hourly" /></td>
			</tr>
			<tr>
				<td>Employee Username: <input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Employee Password: <input type="text" name="passcode" /></td>
			</tr>
	
			
				<tr><td><input type="Submit" value="SUBMIT"/></td>
			</tr>
   
		</table>
	</form>
      
    </div>
  </div>
  
</div>

<h1>Delete employee</h1>
	${deleted}
	<br> ${doesntexist}
	<form action="/employee/delete" method="post">
		<table>
			<tr>
				<td>Enter employee username:<input type="text" name="username">
				</td>
			</tr>
			<tr>
				<td><input type="Submit" value="SUBMIT" /></td>
			</tr>




		</table>
	</form>
	<form action="/logout" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>