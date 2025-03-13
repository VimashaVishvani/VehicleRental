<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UserServlet" method="post">
        <label for="id">ID:</label>
        <input type="text" id="id" name="id"><br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>

        <label for="gmail">Gmail:</label>
        <input type="text" id="gmail" name="gmail"><br><br>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber"><br><br>

        <label for="role">Role:</label>
        <br>
        <input type="radio" id="role" name="role" value="user"><label> User</label><br><input type="radio" id="role" name="role" value="car owner"><label> car Owner</label><br><br>

        <input type="submit" value="Register">
    </form>

</body>
</html>