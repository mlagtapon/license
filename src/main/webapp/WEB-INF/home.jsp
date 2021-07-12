<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Drivers License</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">

  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
    			<ul class="navbar-nav mr-auto">
     				 <li class="nav-item">
        				<a class="nav-link" href="/persons/new">Register</a>
      				</li>
     				 <li class="nav-item">
       					 <a class="nav-link" href="/licenses/new">Add License</a>
      				</li>
    			</ul>
  			</div>
		</nav>
		<div id="dl">
			<table class="table table-hover w-75 p-3 mx-auto">
    			<thead>
        			<tr>
            			<th>Name</th>
            			<th>License Number</th>
            			<th>State</th>
            			<th>Expiration Date</th>
        			</tr>
    			</thead>
    			<tbody>
        			<c:forEach items="${people}" var="oneperson">
        			<tr>
            			<td><a href="/persons/${oneperson.id}"><c:out value="${oneperson.firstName}"/> <c:out value="${oneperson.lastName}"/></a></td>
            			<c:if test="${oneperson.license.state != null}">
            				<td><fmt:formatNumber type = "number" groupingUsed = "false" minIntegerDigits = "6" value = "${oneperson.id}" /></td>
            			</c:if>
            			<td><c:out value="${oneperson.license.state}"/></td>

            			<td><fmt:formatDate value="${oneperson.license.expirationDate}" pattern="yyyy-MM-dd" /></td>
        			</tr>
        			</c:forEach>
    			</tbody>
			</table>
		</div>
	</div>
</body>
</html>