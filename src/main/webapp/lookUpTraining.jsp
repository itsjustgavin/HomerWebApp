<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<table>
<tr>
<td>Employee Name: <%=session.getAttribute("firstname") %> , <%=session.getAttribute("lastname") %> </td>
</tr>
</table>
</form>
<form>
<table>
<tr>
<td>Python: <%=session.getAttribute("python") %></td>
<td>Java: <%=session.getAttribute("java") %></td>
<td>MySql: <%=session.getAttribute("MY_sql") %></td>
<td>Javascript: <%=session.getAttribute("javascript") %></td>
</tr>
</table>
</form>

<%@ include file = "footer.jsp" %>

</div>
</body>
</html>