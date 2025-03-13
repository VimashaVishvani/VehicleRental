<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common_header.jsp"%>
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
        alert('record deleted!'');
    </script>
	</c:if>

	<!-- <div class="dashboard">
		<div class="row">
			<div class="col-6">
				<h1>View Bookings</h1>
			</div>
			<div class="col-3"></div>
			<div class="col-3">
				<form action="UserServlet ">
					<input type="hidden" value="logout" name="task">
					<button type="submit" class="btn btn-danger">login</button>
				</form>
			</div>
		</div>
	</div> -->
	<div class="container" style="margin-top: 5%;">
		<div class="text-center bg-dark rounded" style="padding: 4% 0% 5% 0%;">
			<h1 class="text-white text-uppercase">View Bookings</h1>
		</div>
	</div>
	<div class="container" style="margin-top: 2%;">
		<div class="row">
			<div class="col-3">
				<ul class="list-group">
					<c:set var="userId" value="${sessionScope.userDetails[0].id}" />
					<c:set var="pass" value="${sessionScope.userDetails[0].password}" />

					<li class="list-group-item"><a
						href="userChangePw.jsp?id=${userId}&result=a&pw=${pass}"
						class="btn btn-outline-primary w-100"> Change Password </a></li>

					<li class="list-group-item">
						<form action="vehicleServelet" method="get" class="w-100">
							<input type="hidden" value="${userId}" name="id"> <input
								type="hidden" value="viewAvailableVehicle" name="task">
							<button type="submit" class="btn btn-outline-primary w-100">View
								Vehicles</button>
						</form>
					</li>

					<li class="list-group-item">
						<form action="bookingServlet" method="get" class="w-100">
							<input type="hidden" value="${userId}" name="id"> <input
								type="hidden" value="ViewBookings" name="task">
							<button type="submit" class="btn btn-outline-primary w-100">See
								Bookings</button>
						</form>
					</li>
				</ul>
			</div>

			<div class="col-9">
				<div class="card border">
					<div class="card-header">
						<h4 class="text-left text-decoration-underline">User Details</h4>
					</div>
					<div class="card-body">
						<c:forEach var="user" items="${sessionScope.userDetails}">
							<div class="row mb-3">
								<div class="col-4">
									<strong>Customer ID</strong>
								</div>
								<div class="col-8">${user.id}</div>
							</div>
							<div class="row mb-3">
								<div class="col-4">
									<strong>Customer Name</strong>
								</div>
								<div class="col-8">${user.name}</div>
							</div>
							<div class="row mb-3">
								<div class="col-4">
									<strong>Customer Email</strong>
								</div>
								<div class="col-8">${user.gmail}</div>
							</div>
							<div class="row mb-3">
								<div class="col-4">
									<strong>Customer Phone</strong>
								</div>
								<div class="col-8">${user.phoneNumber}</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
