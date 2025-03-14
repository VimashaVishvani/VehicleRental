<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
String vehiclePricePerDay=request.getParameter("price");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book the Car</title>
</head>
<body>

<h2>Book the Car</h2>

<form id="bookingForm" action="bookingServlet" method="get">
    <label for="userId">User ID:</label><br>
    <input type="text" id="userId" name="userId" value="${param.id}" readonly><br>
    <input type="hidden" name="task" value="booktheCar">
    
    <label for="vehicleId">Vehicle ID:</label><br>
    <input type="text" id="vehicleId" name="vehicleId" value="${param.vid}" readonly><br>
    
    <label for="bookingDate">Booking Start Date:</label><br>
    <input type="date" id="startDate" name="startDate" required><br>
    
    <label for="endDate">Booking End Date:</label><br>
    <input type="date" id="endDate" name="endDate" required><br>
    
    <label for="duration">Duration (in days):</label><br>
    <input type="number" id="duration" name="duration" min="1" readonly><br>
    
    <label for="totalPrice">Total Price:</label><br>
    <input type="text" id="totalPrice" name="totalPrice" readonly><br>
    
    <!-- Change type to button to prevent form submission -->
    <input type="submit" value="Book Car">
</form>

<script>
document.getElementById("startDate").addEventListener("change", calculatePrice);
document.getElementById("endDate").addEventListener("change", calculatePrice);

function calculatePrice() {
    var startDate = new Date(document.getElementById("startDate").value);
    var endDate = new Date(document.getElementById("endDate").value);
    
    // Calculate the duration in days
    var duration = Math.floor((endDate - startDate) / (1000 * 60 * 60 * 24));
    document.getElementById("duration").value = duration;
    
    // Calculate the total price (assuming price per day is available as a variable)
    var pricePerDay = <%= vehiclePricePerDay %>;
    var totalPrice = duration * pricePerDay;
    document.getElementById("totalPrice").value = totalPrice;
}
</script>

</body>
</html>

