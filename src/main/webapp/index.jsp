<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoppingZone</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>


@import url('https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Monoton&family=Montserrat:ital,wght@0,100;1,100&display=swap');

@import url('https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Monoton&family=Montserrat:ital,wght@0,100;1,100&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap');

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        display:flex;
        align-items: center;
        
        height: 100vh;
        background-image: url("https://as1.ftcdn.net/v2/jpg/06/70/38/82/1000_F_670388238_ZoUyLLsPPYDdly9UOAUnbJNuYUzHlPlG.jpg");
      	background-repeat: no-repeat;
 		background-size: cover; 
 		background-position: 100% center;
 		background-size: 120%;
 		backdrop-filter: blur(3px); 
}
    .sidebar {
        width: 280px;
        background-color: rgba(128, 128, 128, 0.8); 
        height:100%;
        padding: 20px;
        box-shadow: 3px 0 10px rgba(0,0,0,0.1);
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .sidebar a {
        display: block;
        margin: 10px 0;
        padding: 12px;
        background-color: white;
        color: #007bff;
        text-decoration: none;
        text-align: center;
        font-weight: bold;
        border-radius: 6px;
        transition: background-color 0.3s ease;
        
    }

    .sidebar a:hover {
        background-color: #e6e6e6;
    }

    .main-content {
    height:300px;
    display:flex;
    align-items:center;
    justify-content:center;
        width:50%;
		background-image:url("https://static.vecteezy.com/system/resources/previews/035/979/670/non_2x/hand-drawn-yellow-color-ink-paint-brush-strokes-isolated-text-design-quote-or-text-information-graphic-elements-painted-for-text-information-ads-offer-big-splatter-stains-paintbrush-overlay-free-png.png");
		background-repeat:no-repeat;
		background-size:100%;
		background-position:51% center;
 		
    }

    .main-content h1 {
        font-size: 40px;
        font-weight: bold;
    	color:  #003366;  /* Makes the text itself transparent */
    	color: ;
    }
    
    .search-bar{
    	position:relative;
    	height:70px;
    	width:50%;
    	background-color:#cecece;
    	border-radius:50px;
    	display: flex;
        align-items: center;
        justify-content: center; 
    }
    
    .fa-magnifying-glass{
    	
    }
    
    .search-icon{
    position:absolute;
    top:0;
    right:0;
outline: none;
border:none;
    height:70px;
    width:70px;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    
    }
    
    .search-box{
     	outline: none;
    	height:100%;
    	width:100%;
    	border:none;
    	background-color:#f2f2f2;
    	border-radius:50px;
    	font-size:20px;
    	color:grey;
    	padding-left:20px;
    }
    
    .main-area{
    flex:1;
    display:flex;
    align-items:center;
        flex-direction: column;
        gap:100px;
        
        
    }
    
   
  
</style>
</head>
<body>

    <div class="sidebar">
        <a href="itm">Add Grocery Items</a>
        <a href="purchase">Purchase Grocery</a>
        <a href="s.earch">Search Grocery Details</a>
        <a href="meow">Delete Grocery Details</a>
        <a href="edit">Update Grocery Details</a>
        <a href="getitm">View All Grocery Details</a>
        
    </div>
   
<div class="main-area">
 <form action="searchbar" class="search-bar">


	<input name="name" class="search-box" placeholder="Search here by name......"/>
<div class="search-icon">
<input class="search-icon" type="submit" value="🔍" >

</div>



</form>
    <div class="main-content">
        <h1>WELCOME TO SHOPPINGZONE</h1>
    </div>
   </div> 

</body>
</html>
