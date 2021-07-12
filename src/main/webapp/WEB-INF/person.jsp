<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Person</title>
<style>
	.sub {
		margin-left: 9.8%;
	}
	
	h1 {
		margin: 1% 0% 1% 2.8%;
	}
</style>
</head>
<body>
	<div id="wrapper">
		<h1>Register</h1>
		<div id="main">
		<form:form action="/people" method="post" modelAttribute="person">
    		<div class="p-3 form-group row form-inline">
        		<form:label path="firstName" class="col-sm-1 col-form-label">First Name:</form:label>
        		<div class="col-sm-4">
	        		<form:errors path="firstName"/>
	        		<form:input path="firstName" class="form-control"/>
        		</div>
    		</div>
    		<div class="p-3 form-group row form-inline">
        		<form:label path="lastName" class="col-sm-1 col-form-label">Last Name:</form:label>
        		<div class="col-sm-4">
	        		<form:errors path="lastName"/>
	        		<form:input path="lastName" class="form-control"/>
        		</div>
    		</div>
    		<div class="form-group row form-inline">
    			<div class="sub">
    				<input class="btn btn-primary" type="submit" value="Submit"/>
    			</div>
    		</div>
		</form:form> 
		</div>
	</div>
</body>
</html>