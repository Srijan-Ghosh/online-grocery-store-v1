<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Grocery Items</title>
<style>

* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
    body {
        font-family: Arial, sans-serif;
        
        margin: 0;
        padding: 0;
        text-align: center; /* Centres all inline elements by default */
        background-image: url("https://as1.ftcdn.net/v2/jpg/06/70/38/82/1000_F_670388238_ZoUyLLsPPYDdly9UOAUnbJNuYUzHlPlG.jpg");
            background-size: 120%;
            background-repeat: repeat;
            backdrop-filter:blur(3px);
    }

    .navbar {
        background-color: #005fbb; /* Softer blue */
        color: white;
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        text-align: center;
    }

    .navbar h1 {
        margin: 0;
        font-size: 22px;
        flex: 1;
        text-align: center;
    }

    .navbar a {
        background-color: #ffffff;
        color: #005fbb;
        padding: 8px 16px;
        text-decoration: none;
        font-weight: bold;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .navbar a:hover {
        background-color: #e6e6e6;
    }

    .container {
        max-width: 1200px;
        margin: 40px auto;
        padding: 0 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }

    th, td {
        padding: 14px 16px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        font-size: 16px;
        color: #555;
    }

    th {
        background-color: #005fbb;
        color: white;
        font-size: 17px;
    }

    tr:hover {
        background-color: #f9f9f9;
    }

</style>
</head>
<body>

<div class="navbar">
    <div style="flex: 1;"></div> <!-- Empty space to push h1 to centre -->
    <h1>All Grocery Items</h1>
    <div style="flex: 1; text-align: right;">
        <a href="index.jsp">Back</a>
    </div>
</div>

<div class="container">
    <table>
        <tr>
            <th>Item ID</th>
            <th>Item Name</th>
            <th>Category</th>
            <th>Price (₹)</th>
            <th>Quantity</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${itemslist}" var="items">
            <tr>
                <td>${items.id}</td>
                <td>${items.name}</td>
                <td>${items.category}</td>
                <td>₹${items.price}</td>
                <td>${items.quantity}</td>
                <td><a href="${pageContext.request.contextPath}/directedit?id=${items.id}">Edit</a></td>
                <td><a href="${pageContext.request.contextPath}/remove?name=${items.name}">Delete</a></td>
                
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
