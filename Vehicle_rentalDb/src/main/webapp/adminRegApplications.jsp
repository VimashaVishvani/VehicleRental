<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrations</title>
</head>
<body>
    <h1>Registration List</h1>

    <%-- JavaScript alert if result is "false" --%>
    <c:if test="${param.result == 'false'}">
        <script type="text/javascript">
            alert('No Registrations Done yet');
        </script>
    </c:if>
    
    <c:if test="${param.result == 'accepted'}">
        <script type="text/javascript">
            alert('Successfully Added!');
        </script>
    </c:if>

    <table border="1">
        <tr>
            <th>Id</th>
            <th>Type</th>
            <th>Model Name</th>
            <th>Brand</th>
            <th>No. of Seats</th>
            <th>Price</th>
            <th>Option</th>
        </tr>
        <c:forEach var="application" items="${Applications}">
            <tr>
                <td>${application.id}</td>
                <td>${application.vType}</td>
                <td>${application.vModelName}</td>
                <td>${application.vBrand}</td>
                <td>${application.noOfSeats}</td>
                <td>${application.price}</td>
                <td>
                
                <form action="applicationServlet" method="get">
                	<input type="hidden" value="accept" name="task">
                	<input type="hidden" value="${application.id}" name="id">
                    <button type="submit"  class="btn btn-custom mx-2">Approve</button>
                
                </form>
                
                
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
