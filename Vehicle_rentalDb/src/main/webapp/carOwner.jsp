<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="common_header.jsp"%>
    <meta charset="ISO-8859-1">
    <title>Car Owner</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 38px;
            font-weight: 700;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        .container {
            margin-top: 90px;
        }
        .card {
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: none;
            background: white;
        }
        .card-header {
            background: #3B82F6;
            color: white;
            font-size: 22px;
            text-align: center;
            padding: 15px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .table {
            font-size: 18px;
        }
        .table td {
            padding: 12px;
            font-weight: 500;
            color: #2c3e50;
        }
        .btn {
            font-size: 16px;
            font-weight: semi-bold;
            padding: 12px;
            margin-top: 15px;
            border-radius: 8px;
            transition: 0.3s;
        }
        .btn-primary {
            background: #3B82F6;
            border: none;
        }
        
       
        .button-group {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%@ include file="dashboardNav.jsp"%>
<h1>Car Owner</h1>

<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-header">
                    Owner Options
                </div>
                <div class="card-body">
                    <table class="table">
                        <c:forEach var="user" items="${userDetails}">
                            <tr>
                                <td><strong>Customer ID</strong></td>
                                <td>${user.id}</td>
                            </tr>
                            <tr>
                                <td><strong>Customer Name</strong></td>
                                <td>${user.name}</td>
                            </tr>
                            <tr>
                                <td><strong>Customer Email</strong></td>
                                <td>${user.gmail}</td>
                            </tr>
                            <tr>
                                <td><strong>Customer Phone</strong></td>
                                <td>${user.phoneNumber}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <c:set var="userId" value="${userDetails[0].id}" />
            
            <div class="button-group">
                <a href="addVehicle.jsp?id=${userId}&result=a" class="btn btn-primary">Add a New Vehicle</a> 

                <form action="viewRegistrations" method="get">
                    <input type="hidden" value="${userId}" name="id">
                    <input type="hidden" value="ViewRegistrations" name="task">
                    <button type="submit" class="btn btn-primary">See Registrations</button>
                </form>

                <form action="vehicleServelet" method="get">
                    <input type="hidden" value="${userId}" name="id">
                    <input type="hidden" value="viewVehicleUser" name="task">
                    <button type="submit" class="btn btn-primary">View Vehicles</button>
                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>
