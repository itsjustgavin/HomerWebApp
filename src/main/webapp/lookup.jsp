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
<script src=https://code.jquery.com/jquery-3.6.0.js></script>

<title>HR Dashboard</title>
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

#formDiv{
positon: absolute;
padding-bottom: 2%;
}


#body {
position: relative;
  min-height: 100vh;
}
 .container {
margin-left: 35%;
}
#footerDiv {


}
#printDiv {
position: absolute;
padding-bottom: 1%;
z-index: 2;

}
#printButton {
position: absolute;

z-index: 2;
}


#returnDiv{
position: absolute;
margin-top: 3%;
z-index: 2;
}
#TekHeroesLogo1 { width: 10%;
				height: 10%;
				margin-right:100%;
			
}

/
#TekHeroesLogo2 {
left: 0;
right: 0;
padding: 0;
margin:0;

	
}


</style>
</head>

<!-- Print button on page, print button on modal, tabulate table for employee info, add modal button to end of each employee row for more details with modal -->
<body id="body">
<%@ include file = "hrheader.jsp" %>
<div id="formDiv"class="container-fluid">
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
				<td>${emailFromDB }</td>
			</tr>
			<tr>
				<td>Username</td>
				<td style="width:60%">${userNameFromDB }</td>
				</tr>
				<tr><td>Employee Role:</td>
				<td style="width:60%">${emproleFromDB}</td>
				</tr>
				<tr>
				<td>Phone number: </td>
				<td style="width:60%">${phonenumberFromDB }</td>
				</tr>
				<tr>
				<td>Employee ID:</td>
				<td style="width:60%">${emp_idFromDB}</td>
				</tr>
				<tr>
				<td>Hourly:</td>
				<td style="width:60%">${hourlyFromDB}</td>
				</tr>
				<tr>
				<td>Onboarding Date:</td>
				<td style="width:60%">${onboarding_dateFromDB}</td>
				</tr>
				
		</table>
	</form>
	<h1>Employee Training</h1>
	<form>
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


	<button type="button" class="btn btn-info btn-lg bg-danger" data-toggle="modal"
		data-target="#exampleModal">Update Employee</button>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content paginator paginator-active" id="pageHome">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Update Employee
						info</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form action="/employee/updatedEmployee" method="post">
						<table>
							<tr>
								<td>Employee Username: <input type="text" name="username"
									value="${userNameFromDB}" /></td>
							</tr>
							<tr>
							<td>Employee Password: <input type="text" name="passcode" value="${passwordFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee First Name: <input type="text" name="fname"
									value="${fnameFromDB }" /></td>

							</tr>
							<tr>
								<td>Employee Last Name: <input type="text" name="lname"
									value="${lnameFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee email: <input type="text" name="email"
									value="${emailFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee Role: <input type="text" name="emprole"
									value="${emproleFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee Phone Number: <input type="text"
									name="phonenumber" value="${phonenumberFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee Hourly Wage: <input type="number"
									name="hourly" value="${hourlyFromDB }" /></td>
							</tr>

								<tr>
				<td>Employee Onboarding Date:</td>
				</tr><tr><td><input type="date" name="onboarding_date"></td>
				</tr>
			



							<tr>
								<td><h4>Insert Employee trainings below:</h4></td>
							</tr>
							<tr>
								<td>Employee Training id: <input type="text" name="id"
									value="${emp_idFromDB}" /></td>
							</tr>
							<tr>
								<td>Python: <input type="text" name="python"
									value="${pythonFromDB }" /></td>
							</tr>
							<tr>
								<td>Java: <input type="text" name="java"
									value="${javaFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee My_Sql: <input type="text" name="MY_sql"
									value="${mysqlFromDB }" /></td>
							</tr>
							<tr>
								<td>Javascript: <input type="text" name="javascript"
									value="${jsFromDB }" /></td>

							</tr>



							<tr>
								<td><h4>Update Employee Documents below:</h4></td>
							</tr>
							<tr>
								<td>Employee id: <input type="text" name="id"
									value="${emp_idFromDB}" /></td>
							</tr>
							<tr>
								<td>Employee Onboarding: <input type="text"
									name="onboarding" value="${onboardingFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee Policies: <input type="text" name="policies"
									value="${policiesFromDB }" /></td>
							</tr>
							<tr>
								<td>Employee Assigments: <input type="text"
									name="assignments" value="${assignmentsFromDB }" /></td>
							</tr>
								<tr><td><input type="submit" value="SUBMIT">
						</table>
					</form>
				</div>

			</div>

		</div>
	</div>


</div>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">

$("#exampleModal").modal();
//Adding body event listeners to paging buttons
$('body').on('click','.paginator-button', evt => {
  	const target = $(evt.target);
    const href = target.attr("href");
    const activePage = target.closest('.paginator.paginator-active');
    
});
  </script>
  <div id="printDiv"class="container-fluid">
	<div><button id="printButton"class="bg-danger btn btn-lg text-light" onclick="window.print()">Print this page</button></div></div>
  
  
  <div id="returnDiv">
<div id="containerButton"class="container-fluid">
	 <a href="/hr.jsp"><button class="btn btn-info btn-lg bg-danger">Return</button></a>

</div>
</div>
<br>
<div id="footerDiv"></div>
<%@ include file = "footer.jsp" %>

  
 
</body>
</html>