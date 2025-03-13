<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-expand-lg bg-dark"
	style="position: absolute; top: 0; width: 100%; background-color: rgba(0, 0, 0, 0.0); z-index: 100;">
	<div class="container-fluid pt-2 pb-1">
		<a class="navbar-brand text-warning" style="font-size: 1.25rem"
			href="#"><span class="fw-bold"><i
				class="bi bi-car-front display-6"></i>&nbsp;Mega-</span><span
			class="text-white">City Cab</span></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active text-light"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link text-light" href="#">Vehicles</a>
				</li>
			</ul>
			<a class="btn btn-outline-success" href="login.jsp"
				style="margin-right: 20px;">Login</a>
			<button class="btn btn-outline-danger"
				onclick="window.location.href='register.jsp'">Register</button>

		</div>
	</div>
</nav>
