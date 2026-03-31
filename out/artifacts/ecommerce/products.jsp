<%@ page import="model.Products" %>
<%@ page import="java.util.List" %><%--
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
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

%>


<!-- Header -->
<header style="background-color: #6a5acd; color: white; padding: 15px; text-align: center;">
    <h1>My E-Commerce Store</h1>
    <p>Explore Our Latest Products</p>
</header>
<%   if(session.getAttribute("username")==null)
{
    response.sendRedirect("login.jsp");
}
    List<Products> products = (List<Products>) request.getAttribute("products");

%>

<!-- Product Section -->
<div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 20px; gap: 20px;">

    <% if(products !=null && !products.isEmpty())
        {
            for(Products p:products){

     %>
    <div style="background: white; width: 250px; border-radius: 10px; padding: 15px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); text-align: center;">
        <img src="<%= p.getImage()%>"
             style="width: 100%; height: 180px; object-fit: cover; border-radius: 10px;">
        <h3>NAME:<%= p.getName()%></h3>
        <p>PRICE:<%= p.getPrice()%></p>


        <form action="Cart">
            <input type="hidden" name="productId" value="<%= p.getProduct_id()%>">
            <input type="hidden" name="action" value="add">
            <button style="background-color: #6a5acd; color: white; border: none; padding: 10px; border-radius: 5px; cursor: pointer;">Add to Cart</button>
        </form>

    </div>
   <%
      }
    }
    else{

      %>  <p>no products available...</p>
    <%
        }
    %>


</div>
</body>
</html>
