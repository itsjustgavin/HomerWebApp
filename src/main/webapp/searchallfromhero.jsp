<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="java.util.*"%>
<%@ page import="com.tekheroes.*"%>


<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
 
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"> </script>
<title>Hero</title>

<style>
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
</style>


<meta charset="ISO-8859-1">
<title>Insert title here</title>


 <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
</head>


<body id="body">

<%@ include file = "heroheader.jsp" %>

<!-- <button class="collapsible">More Info</button> -->
<div class="content">


  <table id="myTable" class="table table-striped" border='1'>
  
  <thead style="font-size: large">	
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email</th>
	<th>Phonenumber</th>
	<th>Username</th>
	<th>Employee Role</th>
	<th>Start Date</th>

</tr>
</thead>

		
<%ArrayList<Employee> list = (ArrayList<Employee>) request.getAttribute("allEmployees");
		/* allEmployee = request.getAttribute("allEmployees"); */

		for (Employee employee : list) {%>	



	

<tr>
					
					<td style="font-size: medium" id="fname"><%out.println(employee.getFname());%></td>			
					<td style="font-size: medium" id="lname"><%out.println(employee.getLname());%></td>
					<td style="font-size: medium"><%out.println(employee.getEmail()); %></td>
					<td style="font-size: medium"><%out.println(employee.getPhonenumber());%></td>
					<td style="font-size: medium"><%out.println(employee.getUsername()); %> </td>
					<td style="font-size: medium"><%out.println(employee.getEmprole());%></td>
					<td style="font-size: medium"><%out.println(employee.getOnboarding_date()); %></td>
					
</tr>
<!-- store all employee information to the arraylist, pass it to the modal -->
		<!--  modal needs to know which button is being called -->





	

	<%
	}
	%>
</table>
</div>
<div class="container-fluid">
	<div style="margin-top: 2%"><button class="bg-danger btn btn-lg text-light" onclick="window.print()">Print this page</button></div></div>
<!-- This is a datatable, it makes your tables more dynamic -->


<%@ include file = "footer.jsp" %>
</body>
</html>