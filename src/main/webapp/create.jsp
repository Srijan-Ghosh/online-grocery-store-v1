<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Grocery Item</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url("https://as1.ftcdn.net/v2/jpg/06/70/38/82/1000_F_670388238_ZoUyLLsPPYDdly9UOAUnbJNuYUzHlPlG.jpg");
      	background-repeat: no-repeat;
 		background-size: cover; 
 		background-position: 100% center;
 		background-size: 120%;backdrop-filter: blur(3px); 
    }

    .form-container {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        width: 500px;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }

    .back-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }

    .back-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Add Grocery Item</h2>

    <form:form action="save" modelAttribute="items">
        <label>Product Name:</label>
        <form:input path="name" />

        <label>Product Category:</label>
        <form:select path="category">
            <form:option value="" label="--Select Category--" />
            <form:option value="Fruits & Vegetables" />
            <form:option value="Dairy & Eggs" />
            <form:option value="Meat & Seafood" />
            <form:option value="Bakery & Breads" />
            <form:option value="Rice, Pulses & Grains" />
            <form:option value="Spices & Condiments" />
            <form:option value="Snacks & Beverages" />
            <form:option value="Frozen & Ready-to-Eat" />
            <form:option value="Oil & Ghee" />
            <form:option value="Cleaning & Household Essentials" />
            <form:option value="Personal Care & Hygiene" />
            <form:option value="Baby Care" />
            <form:option value="Health & Wellness" />
            <form:option value="Breakfast & Cereals" />
            <form:option value="Packaged Foods" />
            <form:option value="Dry Fruits & Nuts" />
            <form:option value="Beverages (Tea, Coffee, Juices, Soft Drinks)" />
            <form:option value="Instant & Ready-to-Cook" />
            <form:option value="Sauces & Spreads" />
            <form:option value="Household Supplies" />
            <form:option value="Pet Food & Care" />
            <form:option value="Canned & Jarred Goods" />
            <form:option value="Confectionery & Sweets" />
            <form:option value="Organic & Health Foods" />
            <form:option value="Stationery & Office Supplies" />
        </form:select>

        <label>Product Price:</label>
        <form:input path="price" type="number" />

        <label>Product Quantity:</label>
        <form:input path="quantity" type="number" />

        <label>Image URL:</label>
        <form:input path="image" type="text" />

        <input type="submit" value="Add Item">
    </form:form>

    <a href="index.jsp" class="back-link">Back</a>
</div>

</body>
</html>
