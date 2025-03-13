<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common_header.jsp"%>
	<meta charset="UTF-8">
    <title>Registrations</title>
    
</head>
<body>
<%@ include file="dashboardNav.jsp"%>


	<%
	String id = request.getParameter("id");
	%>

	<%-- JavaScript alert if result is "false" --%>
	<c:if test="${param.result == 'false'}">
		<script type="text/javascript">
			alert('No any vehicle Available!');
		</script>
	</c:if>
	<div class="container" style="margin-top: 5%;">
		<div class="text-center bg-dark rounded" style="padding: 4% 0% 5% 0%;">
			<h1 class="text-white text-uppercase">View Vehicles</h1>
		</div>
	</div>
	<div class="container mt-5">
		<div class="row">
			<c:forEach var="vehicle" items="${vehicles}">
				<div class="col-md-3 mb-4">
					<div class="card">
						<img src="images/placeholder.jpeg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${vehicle.vModelName}</h5>
							<p>
								<strong>Type:</strong> ${vehicle.vType}
							</p>
							<p>
								<strong>Brand:</strong> ${vehicle.vBrand}
							</p>
							<p>
								<strong>No. of Seats:</strong> ${vehicle.noOfSeats}
							</p>
							<p>
								<strong>Price:</strong> ${vehicle.price}
							</p>
							<p>
								<strong>Status:</strong> ${vehicle.status}
							</p>
							<a
								href="userBookCar.jsp?id=<%= id %>&vid=${vehicle.id}&price=${vehicle.price}"
								class="btn btn-primary w-100">Book this ${vehicle.vType}</a>
							<!-- Full-width button -->
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>
