<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Products</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        text-align: center;
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

    .quantity-selector {
        display: flex;
        align-items: center;
        margin-top: 15px;
    }

    .quantity-selector button {
        background-color: #007bff;
        border: none;
        color: white;
        font-size: 18px;
        padding: 5px 10px;
        cursor: pointer;
        border-radius: 4px;
    }

    .quantity-selector input {
        width: 40px;
        text-align: center;
        margin: 0 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 4px;
        padding: 5px;
    }

    .submit-container {
        display: flex;
        justify-content: flex-end;
        margin-top: 15px;
    }

    .submit-container input {
        width: auto;
        padding: 12px 30px;
        background-color: #28a745;
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
    }

    .submit-container input:hover {
        background-color: #218838;
    }

    /* Styling for the input fields */
    .input-container {
        margin-bottom: 20px;
        display: flex;
        justify-content: space-evenly;
        align-items: center;
    }

    .input-container label {
        display: block;
        font-weight: bold;
        color: #333;
        width: 30%;
    }

    .input-container select,
    .input-container input {
        width: 150px; /* smaller width */
        padding: 8px;
        font-size: 14px; /* smaller font size */
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .buy-now {
        padding: 10px 20px;
        background-color: #28a745;
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        text-align: center;
        display: inline-block;
        width: 100%;
        margin-left: 20px;
    }

    .buy-now:hover {
        background-color: #218838;
    }

</style>

</head>
<body>

<div class="navbar">
    <div style="flex: 1;"></div>
    <h1>Select Items to Purchase</h1>
    <div style="flex: 1; text-align: right;">
        <a href="index.jsp">Back</a>
    </div>
</div>

<div class="container">
    <form:form action="process" modelAttribute="puritems">
        
        <div class="input-container">
            <!-- Item Category Dropdown -->
            <form:label path="name">Select Item Name:</form:label>
    <form:select path="name">
      <option value=""  label="-- Select Name --"></option>
      <c:forEach items="${itemslist}" var="category">
        <option value="${category.name}">${category.name}</option>
      </c:forEach>
    </form:select>
            <!-- Quantity Field -->
            <form:label path="quantity">Enter Item Quantity:</form:label>
            <form:input path="quantity" style="width: 70px;"/>

            <!-- Buy Now Button -->
            <input type="submit" value="Buy Now" class="buy-now">
        </div>

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

    </form:form>
</div>

</body>
</html>
