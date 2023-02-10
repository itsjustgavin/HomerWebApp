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

<div class="container-fluid">
	<h1>${username}</h1>
	<form action="/employee/newtraining" method="post">
		<table>
			<tr>
				<td><h4>Insert Employee trainings below:</h4></td>
			</tr>
			<tr>
				<td>Employee Training id: <input type="number" name="id" value="${id}" /></td>
			</tr>
			<tr>
				<td>Python: <input type="text" name="python" value="pending" /></td>
			</tr>
			<tr>
				<td>Java: <input type="text" name="java" value="pending" /></td>
			</tr>
			<tr>
				<td>Employee My_Sql: <input type="text" name="MY_sql"
					value="pending" /></td>
			</tr>
			<tr>
				<td>Javascript: <input type="text" name="javascript"
					value="pending" /></td>
			</tr>
				
				<tr><td><input type="Submit" value="SUBMIT"/></td>
			</tr>
		</table>
	</form>
	</div>
	<%@ include file = "footer.jsp" %>
	
</body>
</html>