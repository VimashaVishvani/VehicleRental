<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="common_header.jsp"%>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        body {
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            width: 90%;
            max-width: 1000px;
            margin-left: auto;
            margin-right: auto;
        }
        h1 {
            text-align: center;
            color: #1E3A8A;
            margin-bottom: 20px;
            font-size: 28px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            font-size: 18px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 14px;
            text-align: left;
        }
        th {
            background: #1E3A8A;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1><b>User List</b></h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.gmail}</td>
                        <td>${user.phoneNumber}</td>
                        <td>${user.role}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
