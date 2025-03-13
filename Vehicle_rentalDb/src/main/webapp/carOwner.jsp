<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Car Owner</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<h1>Car Owner</h1>

<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-header">
                    <h1 class="text-center">Owner Options</h1>
                </div>
                <div class="card-body">
                    <table class="table">
                        <c:forEach var="user" items="${userDetails}">
                            <tr>
                                <td>Customer ID</td>
                                <td>${user.id}</td>
                            </tr>
                            <tr>
                                <td>Customer Name</td>
                                <td>${user.name}</td>
                            </tr>
                            <tr>
                                <td>Customer Email</td>
                                <td>${user.gmail}</td>
                            </tr>
                            <tr>
                                <td>Customer Phone</td>
                                <td>${user.phoneNumber}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<c:set var="userId" value="${userDetails[0].id}" />
<a href="addVehicle.jsp?id=${userId}&result=a" class="btn btn-primary">Add a new Vehicle</a> 


<form action="viewRegistrations" method="get">
<input type="hidden" value="${userId}" name="id">
<input type="hidden" value="ViewRegistrations" name="task">
<button type="submit"  class="btn btn-primary">See Registrations</button>
</form>

<form action="vehicleServelet" method="get">
<input type="hidden" value="${userId}" name="id">
<input type="hidden" value="viewVehicleUser" name="task">
<button type="submit"  class="btn btn-primary">View Vehicles</button>
</form>

</body>
</html>
