<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common_header.jsp"%>
    <meta charset="UTF-8">
    <title>Registrations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            font-family: 'Poppins', sans-serif;
        }
        .container {
            margin-top: 100px;
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
        .btn-delete {
            background-color: #dc3545;
            color: white;
            border-radius: 8px;
        }
        .btn-delete:hover {
            background-color: #c82333;
        }
        .table-responsive {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%@ include file="dashboardNav.jsp"%>
<div class="container">
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
                <c:forEach var="application" items="${Applications}">
                    <tr>
                        <td>${application.id}</td>
                        <td>${application.vType}</td>
                        <td>${application.vModelName}</td>
                        <td>${application.vBrand}</td>
                        <td>${application.noOfSeats}</td>
                        <td>${application.price}</td>
                        <td>
                            <span class="badge 
                                <c:choose>
                                    <c:when test='${application.status == "Unavailable"}'>bg-danger</c:when>
                                    <c:otherwise>bg-success</c:otherwise>
                                </c:choose>">
                                ${application.status}
                            </span>
                        </td>
                        <td>
                            <form action="applicationServlet" method="post">
                                <input type="hidden" value="${application.id}" name="applicationId">
                                <input type="hidden" value="${application.ownerId}" name="id">
                                <input type="hidden" value="deleteApllication" name="task">
                                <button type="submit" class="btn btn-delete">Delete</button>
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
