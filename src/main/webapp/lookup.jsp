<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
.paginator {
	display: none;
}

.paginator-active {
	display: inherit;
}
</style>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

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


	<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
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
</body>
</html>