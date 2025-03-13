<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="common_header.jsp"%>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    body {
        background-color: #f8f9fa;
    }

    .container {
        margin-top: 120px;
    }

    .card {
        border: none;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .card-header {
        background-color: #007bff;
        color: #fff;
        border-radius: 10px 10px 0 0;
    }

    .btn-custom {
        background-color: #007bff;
        border-color: #007bff;
        border-radius: 5px;
    }
</style>
</head>
<body>
<%@ include file="dashboardNav.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-header">
                    <h1 class="text-center">Admin Portal</h1>
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
                    <div class="text-center">
                        <!-- Buttons for navigating to other pages -->
                   
                        <form action="viewUser" method="get">
                        	<input type="hidden" value="ViewUsers" name="task">
                        	<button type="submit"  class="btn btn-custom mx-2">View Users</button>
                        </form>
                        
                        
                          <form action="applicationServlet" method="get">
                        	<input type="hidden" value="ViewApplications" name="task">
                        	<button type="submit"  class="btn btn-custom mx-2">View Applications</button>
                        </form>
                        <a href="ViewUsers.jsp" class="btn btn-custom mx-2">View Vehicles</a>
                        <a href="viewBookings.jsp" class="btn btn-custom mx-2">View Bookings</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
