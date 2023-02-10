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
<title>Hero Dashboard</title>
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

.center {
margin: auto;
padding: auto;
text-align: center;
}
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
}
 .container {
margin-left: 35%;
}

#body {
position: relative;
  min-height: 100vh;
}
#TekHeroesLogo1 { width: 10%;
position: relative;
display: inline-block;
z-index: 1;

			
}


</style>
</head>
<body id="body">
<%@ include file = "heroheader.jsp" %>
<h1 class="center">Hero Dashboard</h1>
<div class="container-fluid">

<!-- Check one two three -->
<form method="post" action="/uploadFile.jsp" enctype="multipart/form-data">
<input type="file" name="file" required> 

<br>
<input class="btn btn-info btn-m bg-danger" type="submit" value="Upload">
</form>
</div>
<div class="fixed-bottom">
<div id="containerButton"class="container-fluid fixed-bottom mb-5">
	<form action="/logout" method="post">
<input id="logoutButton"class="btn btn-info btn-lg bg-danger" type="submit" value="Logout">

</form></div></div>
<%@ include file = "footer.jsp" %>
</body>
</html>