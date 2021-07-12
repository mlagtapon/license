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
<title>License</title>
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
		<h1>New License</h1>
		<div id="main">
		<form:form action="/licenses" method="POST" modelAttribute="license">
    		<div class="p-3 form-group row form-inline">
    			<form:label path="person" class="col-sm-1 col-form-label"> Person:</form:label>
    			<div class="col-sm-4">
	        		<form:errors path="person"/>
	        		<form:select path="person" class="form-control">
	        			<form:options items="${people}" itemValue="id" itemLabel="firstName" />
	        		</form:select>
    			</div>
    		</div>
    		<div class="p-3 form-group row form-inline">
        		<form:label path="state" class="col-sm-1 col-form-label">State:</form:label>
        		<div class="col-sm-4">
	        		<form:errors path="state"/>
	        		<form:input path="state" class="form-control"/>
        		</div>
    		</div>
    		<div class="p-3 form-group row form-inline">
    		    <form:label path="expirationDate" class="col-sm-1 col-form-label">Expiration Date:</form:label>
    		    <div class="col-sm-4">
	        		<form:errors path="expirationDate"/>
	        		<form:input path="expirationDate" type="date" class="form-control"/>
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