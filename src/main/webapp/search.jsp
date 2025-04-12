<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<h2>Search Grocery Item</h2>
	<form action="view" modelAttribute="items">
    <label for="name">Search item by name: </label>
    <select name="name">
        <option value=""></option>
        <c:forEach items="${namelist}" var="name">
        <option value="${name}">${name }</option>
    	</c:forEach>
    </select>
    <br><br>

    <label for="category">Search item by category: </label>
    <select name="category">
     	<option value=""></option>
     	<c:forEach items="${categorylist}" var="category">
     	
		<option value="${category}">${category }</option>		
		</c:forEach>
    </select>
    <br><br>

    <input type="submit" value="Search">
</form>

	<br><br>
	
	<a href="index.jsp" class="back-link">Back</a>
	</div>
</body>
</html>