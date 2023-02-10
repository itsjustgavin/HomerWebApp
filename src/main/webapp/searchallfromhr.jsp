<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="java.util.*"%>
<%@ page import="com.tekheroes.*"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"> </script>

<style>

 .container {
margin-left: 35%;
}
#TekHeroesLogo1 { width: 10%;
				height: 10%;
				margin-right:100%;
			
}


</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>


 <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</head>


<body>

<%@ include file = "hrheader.jsp" %>
<!-- <button class="collapsible">More Info</button> -->
<div class="content">


  <table id="myTable" class="table table-striped" border='1'>
  
  <thead>	
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email</th>
	<th>Phonenumber</th>
	<th>Username</th>
	<th>Employee Role</th>
	<th>Employee Salary</th>
	<th>Start Date</th>

</tr>
</thead>

		
<%ArrayList<Employee> list = (ArrayList<Employee>) request.getAttribute("allEmployees");
		/* allEmployee = request.getAttribute("allEmployees"); */

		for (Employee employee : list) {%>	



	

<tr>
					
					<td id="fname"><%out.println(employee.getFname());%></td>			
					<td id="lname"><%out.println(employee.getLname());%></td>
					<td><%out.println(employee.getEmail()); %></td>
					<td><%out.println(employee.getPhonenumber());%></td>
					<td><%out.println(employee.getUsername()); %> </td>
					<td><%out.println(employee.getEmprole());%></td>
					<td><%out.println(employee.getHourly()); %>
					<td><%out.println(employee.getOnboarding_date()); %></td>
</tr>
<!-- store all employee information to the arraylist, pass it to the modal -->
		<!--  modal needs to know which button is being called -->





	

	<%
	}
	%>
</table>
</div>
<div class="">
<div id="returnDiv"class="container-fluid">
	 <a href="/hr.jsp"><button class="btn btn-info btn-lg bg-danger">Return</button></a>
</div>
</div>
<div class="container-fluid">
	<div style="margin-top: 2%"><button class="bg-danger btn btn-lg text-light" onclick="window.print()">Print this page</button></div></div>
	
	
	<%@ include file = "footer.jsp" %>
<!-- This is a datatable, it makes your tables more dynamic -->
</body>
</html>