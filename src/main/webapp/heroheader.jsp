<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Hero Dashboard</title>
<style>
.heroCard {
border-width: thick;
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
#TekHeroesLogo1 { width: 10%;
position: relative;
display: inline-block;
z-index: 1;

			
}


</style>
</head>
<body>
<header class="bg-dark">



<img  id="TekHeroesLogo1" class="img-fluid"src="https://myhomerimagebucket.s3.amazonaws.com/HomerLogo-1.jpg" alt="HomerLogo1">
<div class="navstuff text-center">
<ul class="nav justify-content-center">
<li class="nav-item">
<a class="nav-link" href="/hero.jsp">Hero Dashboard</a></li>
  <li class="nav-item">
    <a class="nav-link" href="/lookupself.jsp">Trainings and Documents</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/employeecontacts.jsp">Employee Contacts</a>
  </li>
</ul></div>
</header>
<h2>Welcome ${userNameFromDB }</h2>
<details open>
<summary>ID Card <small>click to close</small></summary>
<div class="w3-container" align="left" style="width: 95%">
		<div id ="heroCard" class="w3-card-4 text-light bg-dark rounded" style="width: 12%">
			<div class="w3-container w3-center">
				<img src="https://myhomerimagebucket.s3.amazonaws.com/ironmanfortekheroes.jpg" alt="Avatar" style="width: 65%">
				<h5>${fnameFromDB } ${lnameFromDB }</h5>
				<font size=4>${emailFromDB }</font> <font size=4>${phonenumberFromDB}</font><br>
				<font size=4>${emproleFromDB}</font>
		
					
				</div>
			</div>

		</div>
</details>
</body>
</html>