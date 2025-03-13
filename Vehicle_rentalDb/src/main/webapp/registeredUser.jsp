<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="common_header.jsp"%>
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            margin-top: 70px
            
        }
        .button-container {
            margin-top: 20px;
            text-align: center;
        }
        .button-container .btn {
            width: 200px;
            margin: 5px;
            background-color: #007bff; /* Blue color */
            color: white;
            border: none;
        }
        .button-container .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <%@ include file="dashboardNav.jsp"%>

    <c:if test="${param.result == 'booked'}">
        <script type="text/javascript">
            alert('You booked the car!');
        </script>
    </c:if>
    <c:if test="${param.result == 'Deleted'}">
        <script type="text/javascript">
            alert('Record deleted!');
        </script>
    </c:if>

    <div class="container" style="margin-top: 3%;">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card border">
                    <div class="card-header">
                        <h4 class="text-decoration center" >User Details</h4>
                    </div>
                    <div class="card-body center">
                        <c:forEach var="user" items="${sessionScope.userDetails}">
                            <div class="row mb-3">
                                <div class="col-4"><strong>Customer ID</strong></div>
                                <div class="col-8">${user.id}</div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-4"><strong>Customer Name</strong></div>
                                <div class="col-8">${user.name}</div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-4"><strong>Customer Email</strong></div>
                                <div class="col-8">${user.gmail}</div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-4"><strong>Customer Phone</strong></div>
                                <div class="col-8">${user.phoneNumber}</div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <!-- Buttons Below -->
                <div class="button-container">
                    <c:set var="userId" value="${sessionScope.userDetails[0].id}" />
                    <c:set var="pass" value="${sessionScope.userDetails[0].password}" />

                    <a href="userChangePw.jsp?id=${userId}&result=a&pw=${pass}" 
                        class="btn btn-primary">Change Password</a>

                    <form action="vehicleServelet" method="get" style="display: inline;">
                        <input type="hidden" value="${userId}" name="id">
                        <input type="hidden" value="viewAvailableVehicle" name="task">
                        <button type="submit" class="btn btn-primary">View Vehicles</button>
                    </form>

                    <form action="bookingServlet" method="get" style="display: inline;">
                        <input type="hidden" value="${userId}" name="id">
                        <input type="hidden" value="ViewBookings" name="task">
                        <button type="submit" class="btn btn-primary">See Bookings</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
