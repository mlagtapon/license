<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	body {
		padding: 20px;
	}
	p {
		font-size: 20px;
	}
</style>
<title>Drivers License</title>
</head>
<body>
	<h1><c:out value="${aPerson.firstName}" /> <c:out value="${aPerson.lastName}" /></h1>
	<p>License Number: <c:out value="${num}" /></p>
	<p>State:  <c:out value="${aPerson.license.state}" /></p>
</body>
</html>