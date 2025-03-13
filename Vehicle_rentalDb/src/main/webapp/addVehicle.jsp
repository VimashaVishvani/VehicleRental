<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="common_header.jsp"%>
    <meta charset="ISO-8859-1">
    <title>Add Vehicle</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 36px;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            
        }
       
        .form-label {
            font-weight: bold;
            color: #2c3e50;
        }
        .btn-primary {
            background: #3B82F6;
            border: none;
            font-size: 18px;
            font-weight: bold;
            padding: 12px;
            border-radius: 8px;
            transition: 0.3s;
            width: 100%;
        }
        
    </style>
</head>

<body>
<%@ include file="dashboardNav.jsp"%>
    <h1>Add a Vehicle</h1>

    <%
        String id = request.getParameter("id");
        String result = request.getParameter("result");
        
        if ("true".equals(result)) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Successfully added!');");
            out.println("</script>");
        }
    %>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-container">
                    <h2 class="text-center mb-4">Vehicle Registration Form</h2>
                    <form action="sR" method="post">
                        <div class="mb-3">
                            <label for="vType" class="form-label">Vehicle Type</label>
                            <input type="text" class="form-control" id="vType" name="vType" required>
                        </div>
                        <div class="mb-3">
                            <label for="vModelName" class="form-label">Vehicle Model Name</label>
                            <input type="text" class="form-control" id="vModelName" name="vModelName" required>
                        </div>
                        <div class="mb-3">
                            <label for="vBrand" class="form-label">Vehicle Brand</label>
                            <input type="text" class="form-control" id="vBrand" name="vBrand" required>
                        </div>
                        <div class="mb-3">
                            <label for="noOfSeats" class="form-label">Number of Seats</label>
                            <input type="number" class="form-control" id="noOfSeats" name="noOfSeats" required min="1">
                        </div>
                        <div class="mb-3">
                            <label for="price" class="form-label">Price</label>
                            <input type="number" class="form-control" id="price" name="price" required min="1">
                        </div>
                        <input type="hidden" name="vOwner" value="<%= id %>">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
