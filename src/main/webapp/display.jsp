<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grocery Items</title>
    <style>
 
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        text-align: center;
    }
 body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: -1;
    }
    .navbar {
        background-color: #005fbb;
        color: white;
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
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
        width: 100%;
        margin: 40px auto;
        padding: 0 20px;
    }

    h2 {
        margin-bottom: 30px;
        color: #333;
    }

    .card-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 20px;
    }

    .card {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .card img {
        width: 100%;
        height: 180px;
        object-fit: cover;
        border-radius: 8px;
        margin-bottom: 10px;
    }

    .card h3 {
        margin: 0 0 10px 0;
        color: #007bff;
    }

    .card p {
        margin: 4px 0;
        color: #555;
    }

</style>

</head>
<body>

<div class="navbar">
    <div style="flex: 1;"></div>
    <h1>Item Details</h1>
    <div style="flex: 1; text-align: right;">
        <a href="index.jsp">Back</a>
    </div>
</div>

<div class="container">
       
        <div class="card-grid">
            <c:forEach items="${itemslist}" var="item" varStatus="loop">
                <div class="card">
                    <img src="${item.image}" alt="${item.name}">
                    <h3>${item.name}</h3>
                    <p><strong>Category:</strong> ${item.category}</p>
                    <p><strong>Price:</strong> ₹${item.price}</p>
                    <p><strong>In Stock:</strong> ${item.quantity}</p>

                </div>
            </c:forEach>
        </div>

   
</div>

</body>
</html>
