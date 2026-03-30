<%--
  Created by IntelliJ IDEA.
  User: S.Sanjay
  Date: 24-03-2026
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>


<body style="font-family: Arial, sans-serif; background-color: #f5f5f5; margin: 0;">

<!-- Header -->
<header style="background-color: #6a5acd; color: white; padding: 15px; text-align: center;">
    <h1>My E-Commerce Store</h1>
    <p>Explore Our Latest Products</p>
</header>

<!-- Product Section -->
<div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 20px; gap: 20px;">

    <!-- Product Card 1 -->
    <div style="background: white; width: 250px; border-radius: 10px; padding: 15px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); text-align: center;">
        <img src="images/product1.jpg" alt="Product 1" style="width: 100%; height: 180px; object-fit: cover; border-radius: 10px;">
        <h3>Product Name 1</h3>
        <p>₹999</p>
        <button style="background-color: #6a5acd; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer;">
            Add to Cart
        </button>
    </div>

    <!-- Product Card 2 -->
    <div style="background: white; width: 250px; border-radius: 10px; padding: 15px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); text-align: center;">
        <img src="images/product2.jpg" alt="Product 2" style="width: 100%; height: 180px; object-fit: cover; border-radius: 10px;">
        <h3>Product Name 2</h3>
        <p>₹1499</p>
        <button style="background-color: #6a5acd; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer;">
            Add to Cart
        </button>
    </div>

    <!-- Product Card 3 -->
    <div style="background: white; width: 250px; border-radius: 10px; padding: 15px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); text-align: center;">
        <img src="images/product3.jpg" alt="Product 3" style="width: 100%; height: 180px; object-fit: cover; border-radius: 10px;">
        <h3>Product Name 3</h3>
        <p>₹799</p>
        <button style="background-color: #6a5acd; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer;">
            Add to Cart
        </button>
    </div>

</div>

<!-- Footer -->
<footer style="background-color: #6a5acd; color: white; text-align: center; padding: 10px;">
    <p>© 2026 My Store | All Rights Reserved</p>
</footer>
<%
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("login.jsp");
    }
%>
</body>






</html>
