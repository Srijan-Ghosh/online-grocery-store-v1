<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
    
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
        height: 100vh;background-image: url("https://as1.ftcdn.net/v2/jpg/06/70/38/82/1000_F_670388238_ZoUyLLsPPYDdly9UOAUnbJNuYUzHlPlG.jpg");
      	background-repeat: no-repeat;
 		background-size: cover; 
 		background-position: 100% center;
 		background-size: 120%;backdrop-filter: blur(3px);
    }
    

    .form-container {
        background-color: #fff;
       	height:90%;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        width: 60%;
        display:flex;
        flex-direction:column;
		 justify-content:space-between; 
		
       
    }
    
    .form-container .form-items{
    	height:100%;
    	display:flex;
/*         align-items:space-evenly; */
		justify-content:space-evenly;
       
    }
    
    .form-container .form-fields{
    
    	height:500px;
    	width:500px;
    	
		
    }
    
    .flex1{
    	flex:1;
    }
    
    .image img{
    	height:400px;
    	width:400px;
    	box-shadow: 4px 4px 12px rgba(0, 0, 0, 0.15);
    	padding:50px;
    	background-color:#f2f2f2;
    }

    h2 { 
        text-align: center; 
        margin: 30px 0px 50px 0px; 
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

/*     input[type="submit"]:hover { */
/*         background-color: #218838; */
/*     } */

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
    <h2>Update Grocery Item</h2>
    <div class="form-items">
    <div class="image">
    <img src="${items.image }" alt="${items.name}">
    </div>
    <div class="form-fields">
	<form:form action="update" modelAttribute="items" >
	
		<form:label path="id"> ITEM ID : </form:label>
		<form:input path ="id" value="${items.id}"/>
		<br><br>
		
		<form:label path="name"> ITEM NEW NAME : </form:label>
		<form:input path = "name" value="${items.name}"/>
		<br><br>
		
		<form:label path="category"> ITEM NEW CATEGRORY : </form:label>
			<form:select path="category" >
    <form:option value="${categories}" />
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

		<br><br>
		
		<form:label path="price"> ITEM NEW PRICE : </form:label>
		<form:input path = "price" value="${items.price}"/>
		<br><br>
		
		<form:label path="quantity"> ITEM NEW QUANTITY : </form:label>
		<form:input path = "quantity" value="${items.quantity}"/>
		<br><br>
		<label>Image URL:</label>
        <form:input path="image" type="text" />
        <br><br>
		<input type="submit" value="UPDATE ITEMS">	
	
	</form:form>
	<a href="index.jsp" class="back-link">Back</a>
	</div>
	</div>
	

</div>
</body>
</html>