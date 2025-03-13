<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common_header.jsp"%>



<style>
body {
	overflow: hidden;
}

.courosalImages {
	height: 100vh;
	object-fit: cover;
}

.overlay-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 1000;
	/* Make sure this value is higher than the z-index of the carousel */
	background-color: rgba(255, 255, 255, 0.8);
	/* Add a background color with some transparency */
	padding: 20px;
	border-radius: 10px;
	text-align: center;
}

.carousel {
	z-index: 1;
}

.row {
	position: absolute;
	top: 80%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 1000;
}

.hidden {
	background-color: #EA3C54;
	padding: 2%, 0, 2%, 0;
}
</style>
</head>
<body style="padding-top: 0;">

	<%@ include file="common_nav.jsp"%>

	<div id="carouselExample" class="carousel slide">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/landingPage/1.jpg"
					class="d-block w-100 courosalImages" alt="...">
			</div>
			<div class="carousel-item">
				<img src="images/landingPage/2.jpg"
					class="d-block w-100 courosalImages" alt="...">
			</div>
			<div class="carousel-item">
				<img src="images/landingPage/3.jpg"
					class="d-block w-100 courosalImages" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="overlay-content">
		<div class="hidden">
			<p>${regresult}</p>
		</div>
		<h2>Welcome to our Car Rental Service</h2>
		<p>Explore our wide range of vehicles and find the perfect one for
			your needs.</p>
		<a href="#" class="btn btn-primary">Browse Vehicles</a>
	</div>

	<div class="row">
		<div class="col-4">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h3>100</h3>
					<h5 class="card-title">Customer Satisfaction</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>

				</div>
			</div>
		</div>
		<div class="col-4">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h3>584</h3>
					<h5 class="card-title">Vehicles</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>

				</div>
			</div>
		</div>
		<div class="col-4">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h3>1054</h3>
					<h5 class="card-title">Users</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>

				</div>
			</div>
		</div>

	</div>


	<%@ include file="common_footer.jsp"%>

	<script>
		// Function to animate number counting
		function animateValue(element, start, end, duration) {
			let range = end - start;
			let current = start;
			let increment = end > start ? 1 : -1;
			let stepTime = Math.abs(Math.floor(duration / range));
			let timer = setInterval(function() {
				current += increment;
				element.textContent = current;
				if (current == end) {
					clearInterval(timer);
				}
			}, stepTime);
		}

		// Get all h3 elements inside the cards
		let h3Elements = document.querySelectorAll('.card h3');

		// Loop through each h3 element and animate its value
		h3Elements.forEach(function(h3) {
			let startValue = 0; // Start value for counting animation
			let endValue = parseInt(h3.textContent); // Get the end value from the text content of the h3 element
			let duration = 3000; // Duration of the animation in milliseconds
			animateValue(h3, startValue, endValue, duration);
		});
	</script>

</body>
</html>
