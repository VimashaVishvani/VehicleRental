<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="common_header.jsp"%>
<!-- Include Bootstrap CSS -->

<style>
    body {
      background: linear-gradient(to right, #c9d6ff, #e2e2e2);
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .login-form {
      background-color: #ffffff;
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 390px;
    }
    .login-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .form-group label {
      font-weight: semi-bold;
    }
    .form-control {
      border-radius: 5px;
    }
    .btn-primary {
      border-radius: 5px;
    }
  </style>
</head>
<body>
	<%@ include file="dashboardNav.jsp"%>

	<div class="container">
		<%-- <div class="pass-change-form">
           

            <!-- Error and Success Messages -->
            <c:if test="${not empty res}">
                <div class="alert alert-danger">
                    ${res}
                </div>
            </c:if>

            <c:if test="${not empty resDone}">
                <div class="alert alert-success">
                    ${resDone}
                </div>
            </c:if>
        </div> --%>
		<div class="row">
			<div class="col"></div>
			<div class="col login-form">
				<h2>Change Password</h2>

				<form action="UserServlet" method="get">
					<div class="form-group">
						<label for="currentPassword">Current Password:</label> <input
							type="password" id="currentPassword" name="currentPassword"
							class="form-control" required>
					</div>

					<div class="form-group">
						<label for="newPassword">New Password:</label> <input
							type="password" id="newPassword" name="newPassword"
							class="form-control" required>
					</div>

					<div class="form-group">
						<label for="confirmPassword">Confirm New Password:</label> <input
							type="password" id="confirmPassword" name="confirmPassword"
							class="form-control" required>
					</div>

					<div class="form-group">
						<input type="submit" value="Change Password"
							class="btn btn-primary btn-block">
					</div>

					<input type="hidden" value="<%= id %>" name="userId"> <input
						type="hidden" value="changePW" name="task"> <a
						href="registeredUser.jsp" class="btn btn-secondary btn-block">Back</a>
				</form>
			</div>
			<div class="col"></div>
		</div>
	</div>

	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
