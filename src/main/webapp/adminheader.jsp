<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>HR/Admin Header</title>
<style>

.center {
margin: auto;
padding: auto;
text-align: center;
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

</header>
<h2>Welcome ${userNameFromDB }</h2>
<details open>
<summary>ID Card <small>click to close</small></summary>
<div class="w3-container" align="left" style="width: 95%">
		<div id ="heroCard" class="w3-card-4 text-light bg-dark rounded" style="width: 12%">
			<div class="w3-container w3-center">
				<img src="https://myhomerimagebucket.s3.amazonaws.com/nick-fury-with-futuristic-eyepatch-v0-9udlp806nt9a1.webp" alt="Avatar" style="width: 65%">
				<h5>${fnameFromDB } ${lnameFromDB }</h5>
				<font size=4>${emailFromDB }</font> <font size=4>${phonenumberFromDB}</font><br>
				<font size=4>${emproleFromDB}</font>
		
					
				</div>
			</div>

		</div>
</details>
</body>
</html>