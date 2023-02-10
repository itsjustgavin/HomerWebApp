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
<title>HR Dashboard</title>
<style>

 .container {
margin-left: 35%;
}
#TekHeroesLogo1 { width: 10%;
				height: 10%;
				margin-right:100%;
				
}
#body {
position: relative;
  min-height: 100vh;
}
</style>
</head>
<body id="body">
<header class="bg-dark">
<div class="">

<img  id="TekHeroesLogo1" class="img-fluid"src="https://myhomerimagebucket.s3.amazonaws.com/HomerLogo-1.jpg" alt="HomerLogo1"></div>
</header>

<div class="container-fluid">
<h1>Please log in</h1>
<p style="color:red">${error}</p>
<form action = "/employee/login" method ="post">
	<table>
		<tr><td>Username:</td><td><input type="text" name="username"/></td></tr>
		<tr><td>Password:</td><td><input type="password" name="passcode"/></td></tr>
		<tr><td colspan='2' align='center'><input class="btn btn-info btn-m bg-danger" type="submit" value = "login"/></td></tr>
	</table>
</form>
</div>
<div id="contentWrapper">
<%@ include file = "footer.jsp" %>
</div>
</body>

</html>