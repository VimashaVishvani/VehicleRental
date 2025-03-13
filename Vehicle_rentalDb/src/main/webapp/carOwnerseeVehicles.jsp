<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            font-family: 'Poppins', sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }
        table {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            text-align: center;
            vertical-align: middle;
        }
        .btn-custom {
            font-size: 14px;
            padding: 6px 12px;
            border-radius: 8px;
        }
        .btn-available {
            background-color: #28a745;
            color: white;
        }
        .btn-unavailable {
            background-color: #dc3545;
            color: white;
        }
        .btn-available:hover {
            background-color: #218838;
        }
        .btn-unavailable:hover {
            background-color: #c82333;
        }
        .btn-back {
            font-size: 14px;
            font-weight: bold;
            background-color: #007bff;
            color: white;
            padding: 8px 14px;
            border-radius: 10px;
            text-decoration: none;
        }
        .btn-back:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    
    <!-- Back Button Positioned at Top-Right -->
    <div class="d-flex justify-content-end">
        <a href="carOwner.jsp" class="btn-back">Back</a>
    </div>

    <h1>Registration List</h1>

    <%-- JavaScript alert if result is "false" --%>
    <c:if test="${param.result == 'false'}">
        <script type="text/javascript">
            alert('No Registrations Done yet');
        </script>
    </c:if>

    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Type</th>
                    <th>Model Name</th>
                    <th>Brand</th>
                    <th>No. of Seats</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="vehicle" items="${vehicles}">
                    <tr>
                        <td>${vehicle.id}</td>
                        <td>${vehicle.vType}</td>
                        <td>${vehicle.vModelName}</td>
                        <td>${vehicle.vBrand}</td>
                        <td>${vehicle.noOfSeats}</td>
                        <td>${vehicle.price}</td>
                        <td>
                            <span class="badge 
                                <c:choose>
                                    <c:when test='${vehicle.status == "Unavailable"}'>bg-danger</c:when>
                                    <c:otherwise>bg-success</c:otherwise>
                                </c:choose>">
                                ${vehicle.status}
                            </span>
                        </td>
                        <td>
                            <form action="vehicleServelet">
                                <input type="hidden" value="${vehicle.id}" name="vehicleId">
                                <input type="hidden" value="${vehicle.ownerId}" name="id">
                                <input type="hidden" value="${vehicle.status eq 'Unavailable' ? 'updateToAvailable' : 'updateToUnavailable'}" name="task">
                                <button type="submit" class="btn btn-custom 
                                    <c:choose>
                                        <c:when test='${vehicle.status == "Unavailable"}'>btn-available</c:when>
                                        <c:otherwise>btn-unavailable</c:otherwise>
                                    </c:choose>">
                                    <c:choose>
                                        <c:when test="${vehicle.status == 'Unavailable'}">Make Available</c:when>
                                        <c:otherwise>Make Unavailable</c:otherwise>
                                    </c:choose>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
