<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <body>

    <%out.println("Welcome, " + session.getAttribute("usernameFromServlet")); %> <!-- Need to log in a user first, need viewdata servlet -->
    <form>
    <table border="2px">
    <tr>
    <td>First Name</td>
    <td><%= session.getAttribute("firstname") %></td>
    </tr>
    <tr>
    <td>Last Name</td>
    <td><%= session.getAttribute("lastname") %></td>
    </tr>
    <tr>
    <td>Email</td>
    <td><%= session.getAttribute("email") %></td>
    </tr>
    <tr>
 
 
    </body>
</body>
</html>