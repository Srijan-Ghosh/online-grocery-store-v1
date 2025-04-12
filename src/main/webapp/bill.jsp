<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill Summary</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding: 40px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    table {
        width: 40%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        overflow: hidden;
    }

    th, td {
        padding: 16px;
        border-bottom: 1px solid #ddd;
        text-align: left;
        border:none;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:last-child td {
        font-weight: bold;
        background-color: #f9f9f9;
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
        text-decoration:underline;;
    }
</style>
</head>
<body>
<%
int delivery= 40;
int packaging= 40;
int gst= 20;
double price=(double) request.getAttribute("bill"); 

if(price<=0)  
if(price>500){
	packaging =100;
}
else if(price>1000){
	packaging=500;
	
	
}
else if(price<=0){
	packaging=0;
	delivery=0;
	gst=0;
}
double total=delivery + packaging +gst+price; 
%>
<h1>Bill Details</h1>

<table>
    <tr>
        <th>Charge Type</th>
        <th>Amount (₹)</th>
    </tr>
    <tr>
        <td>Delivery Charge</td>
        <td><%= delivery %></td>
    </tr>
    <tr>
        <td>Packaging Charge</td>
        <td><%= packaging %></td>
    </tr>
    <tr>
        <td>GST</td>
        <td><%= gst %></td>
    </tr>
    
    <tr>
        <td>Total Bill</td>
        <td><%= total %></td>
    </tr>
</table>

<a href="index.jsp" class="back-link">Back</a>

</body>
</html>
