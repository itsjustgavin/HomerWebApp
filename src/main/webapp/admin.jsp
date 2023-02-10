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
  
  
  <style>

 .container {
margin-left: 35%;
}
#TekHeroesLogo1 { width: 10%;
				height: 10%;
				margin-right:100%;
			
}
  </style>
<title>Insert title here</title>
</head>
<body>

<%@ include file = "adminheader.jsp" %>

<div class="container-fuild">


	</div>
	  <div class="container">
  <h2>Insert Employee</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg bg-danger" data-toggle="modal" data-target="#myModal1">New Employee</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
     <!-- Modal content-->
    
     <div class="modal-content bg-danger border border-dark text-light text-center">
        <div class="modal-header border border-dark">
     	<h2 class="modal-title border-dark">Insert Employee</h2>
     	</div>
     
     
	<form action="/employee/new" method="post">
		<table>
      
      <tr>
      <td><h2>Insert Employee info below</h2></td>
      </tr>
			<tr>
				<td>Employee First Name: </td>
			</tr>	
			
			<tr>
			<td><input type="text" name="fname" /></td>
			</tr>
				
		
			<tr>
				<td>Employee Last Name: </td>
				</tr>
				
			<tr><td><input type="text" name="lname" /></td></tr>
			
			<tr>
				<td>Employee email: </td></tr>
				<tr><td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Employee Role:</td></tr>
				<tr><td> <input type="text" name="emprole" /></td>
			</tr>
			<tr>
				<td>Employee Phone Number: </td></tr>
				<tr><td><input type="text"
					name="phonenumber"/></td>
			</tr>
			<tr>
				<td>Employee Hourly Wage: </td></tr>
			<tr>	<td><input type="number" name="hourly" /></td>
			</tr>
			<tr>
				<td>Employee Username: </td></tr>
				<tr><td> <input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Employee Password: </td></tr>
				<tr><td> <input type="text" name="passcode" /></td>
			</tr>
	
			<tr>
			<td>Employee Onboarding Date:</td>
			</tr><tr><td><input type="date" name="onboarding_date"></td>
			</tr>
				<tr><td><input type="Submit" value="SUBMIT"/></td>
			</tr>
   
		</table>
	</form>
      </div>
    </div>
  </div>
  
</div>
<div class="container">
<h2>Delete employee</h2>

<button type="button" class="btn btn-info btn-lg bg-danger" data-toggle="modal" data-target="#myModal2">Delete</button>
	${deleted}
	<br> ${doesntexist}
	
	 <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
     <!-- Modal content-->
    
     <div class="modal-content bg-danger border border-dark text-light text-center">
        <div class="modal-header border border-dark">
     	<h2 class="modal-title border-dark">Delete Employee by Username</h2>
     	</div>
     
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
	</div>
	</div>
	</div>
	</div>

	<form action="/logout" method="post">
<input type="submit"class="btn btn-info btn-m bg-danger" value="Logout">
</form>
<%@ include file = "footer.jsp" %>

</body>
</html>