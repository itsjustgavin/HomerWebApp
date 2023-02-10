
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ page import="java.util.*"%>
<%@ page import="com.tekheroes.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
	<script>
	$(function() {
	  $('#myModalNames').modal({
	    keyboard: true,
	    backdrop: "static",
	    show: false,

	  }).on('show', function() {
	    var getIdFromRow = $(event.target).closest('tr').data('id');
	    //make your ajax call populate items or what even you need
	    $(this).find('#').html($('<b> Order Id selected: ' + getIdFromRow + '</b>'))
	  });
	})
	
	</script>
<script src="js/app-ajax.js" type="text/javascript"></script>
<title>HR Dashboard</title>
<style>

.container {
	margin-left: 35%;
}
.center {
margin-left: auto;
margin-right: auto;
}

#TekHeroesLogo1 {
	width: 10%;
	height: 10%;
	margin-right: 100%;
}

table, th, td {
	border: 1px solid black;
	col: 1px solid black;
}
</style>
</head>
<body>
	<header class="bg-dark">
		<div class="">

			<img id="TekHeroesLogo1" class="img-fluid"
				src="file:///C:/Users/ivape/Desktop/HomerLogo-1.jpg"
				alt="HomerLogo1">
		</div>
	</header>
<div class="">
	<div class="">
		<h2>List of Employees</h2>


<table>



		
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email</th>
	<th>Phonenumber</th>
	<th>More info</th>
</tr>





<%ArrayList<Employee> list = (ArrayList<Employee>) request.getAttribute("allEmployees");
		/* allEmployee = request.getAttribute("allEmployees"); */ 
		%>
		
		

		<% for (Employee employee : list) {
		%>		

<tr data-toggle="modal" data-id="<% employee.getId();%>" data-target="#orderModal"> 


					<td id="employee_id"><% employee.getId();%>
					<td id="fname"><%out.println(employee.getFname());%></td>			
					<td id="lname"><%out.println(employee.getLname());%></td>
					<td><%out.println(employee.getEmail()); %></td>
					<td><%out.println(employee.getPhonenumber());%></td>
					
					<td><button name="<%employee.getId(); %>" class="btn btn-info btn-lg bg-danger"
					data-toggle="modal" data-target="#myModalNames">More info</button></td>
					</tr>
				
</table>
<!-- store all employee information to the arraylist, pass it to the modal -->
		<!--  modal needs to know which button is being called -->

<div class="container-fluid">
		<div class="modal fade" id="myModalNames" role="dialog">
			<div class="modal-dialog model-sm">
				<div class="modal-content bg-danger border border-dark text-light text-center">
					
<div style="align-center"><button onclick="window.print()">Print this page</button></div>
			
						<table class="center">
							<tr>
								<td>Employee Id:</td>
								<td>
									<%
									out.println(employee.getId());
									%>
								</td>

							</tr>
							<tr>
								<td>Employee First name:</td>
								<td>
									<%
									out.println(employee.getFname());
									%>
								</td>
							</tr>
							<tr>
								<td>Employee Last name:</td>
								<td>
									<%
									out.println(employee.getLname());
									%>
								</td>
							</tr>
							<tr>
								<td>Employee Email:</td>
								<td>
									<%
									out.println(employee.getEmail());
									%>
								</td>
							</tr>
							<tr>
								<td>Employee Phonenumber:</td>
								<td>
									<%
									out.println(employee.getPhonenumber());
									%>
								</td>
							</tr>
							<tr>
								<td>Employee Role:</td>
								<td>
									<%
									out.println(employee.getEmprole());
									%>
								</td>
							</tr>
							<tr>
								<td>Employee Hourly Rate:</td>
								<td>
									<%
									out.println(employee.getHourly());
									%>
								</td>
							</tr>
							<tr>
								<td>Employee User Name:</td>
								<td>
									<%
									out.println(employee.getUsername());
									%>
								</td>
							</tr>
						</table>
					
				</div>
			</div>
		</div>
</div>
	</div>

	<%
	}
	%>



	<br />
	
	
 

	<%-- <%for(int i = 0; i < allEmployees.size(); i++) %> --%>
	</div>
	

	<div class="">
<div id="containerButton"class="container-fluid">
	 <a href="/hr.jsp"><button class="btn btn-info btn-lg bg-danger">Return</button></a>

</div>
</div>
<%@ include file = "footer.jsp" %>
  
  
</body>

</html>

