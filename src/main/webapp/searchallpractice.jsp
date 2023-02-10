
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ page import="java.util.*"%>
<%@ page import="com.tekheroes.*"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"> -->


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
<script src="js/app-ajax.js" type="text/javascript"></script>
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
.insideTable {
margin-bottom: 1%;
}
.basicInfo {
margin-top: 1%;
}
.collapsible {
  background-color: #343a40;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;

}
#returnDiv{
position: absolute;
margin-top: 1%;
padding-top: 1%;
z-index: 2;
}
.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  background-color: #f1f1f1;
}
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


<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->

<!-- This is a datatable, it makes your tables more dynamic -->

<div class="container-fluid">
	
 <h2>Employee Archive</h2>
<%ArrayList<Employee> list = (ArrayList<Employee>) request.getAttribute("allEmployees");
		/* allEmployee = request.getAttribute("allEmployees"); */

		for (Employee employee : list) {
		%>		
<p class="basicInfo"><%out.println(employee.getFname());%> <%out.println(employee.getLname());%></p>
<%-- <table>
<tr>
					<td id="fname"><%out.println(employee.getFname());%></td>			
					<td id="lname"><%out.println(employee.getLname());%></td>
					<td><%out.println(employee.getEmail()); %></td>
					<td><%out.println(employee.getPhonenumber());%></td>
</tr>			
</table> --%>

<button class="collapsible">More Info</button>
<div class="content">
  <table class="insideTable">



		
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email</th>
	<th>Phonenumber</th>
	<th>Username</th>
	<th>Employee Role</th>
	<th>Employee Hourly</th>
</tr>



<tr>
					
					<td id="fname"><%out.println(employee.getFname());%></td>			
					<td id="lname"><%out.println(employee.getLname());%></td>
					<td><%out.println(employee.getEmail()); %></td>
					<td><%out.println(employee.getPhonenumber());%></td>
					<td><%out.println(employee.getUsername()); %> </td>
					<td><%out.println(employee.getEmprole());%></td>
					<td><%out.println(employee.getHourly());%></td>
</tr>
<!-- store all employee information to the arraylist, pass it to the modal -->
		<!--  modal needs to know which button is being called -->
</table>





	</div>

	<%
	}
	%>
</div>



<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
</script>

	<%-- <%for(int i = 0; i < allEmployees.size(); i++) %> --%>
	
  <div class="">
<div id="returnDiv"class="container-fluid">
	 <a href="/hr.jsp"><button class="btn btn-info btn-lg bg-danger">Return</button></a>
</div>
</div>
<%@ include file = "footer.jsp" %>
  
</body>
</html>