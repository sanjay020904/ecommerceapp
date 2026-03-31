<%@ page import="model.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
</head>
<body style="background:#E6E6FA; font-family:Arial;">
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);



%>


<h1 style="text-align:center;">Cart</h1>

<%
    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

    if (cart == null || cart.isEmpty()) {
%>
<h2 style="text-align:center;">Cart is Empty</h2>
<%
} else {
    double total = 0;

    for (CartItem item : cart) {
        double itemTotal = item.getPrice() * item.getQuantity();
        total += itemTotal;
%>

<div style="background:white; margin:10px; padding:15px; display:flex; justify-content:space-between; align-items:center;">

    <img src="<%= item.getImage() %>" width="100">

    <div>
        <h3>NAME:<%= item.getName() %></h3>
        <p>PRICE: ₹<%= item.getPrice() %></p>
        <p>Qty: <%= item.getQuantity() %></p>
    </div>

    <div>
        <h3>TOTAL: ₹<%= itemTotal %></h3>
    </div>

    <form action="Cart">
        <input type="hidden" name="action" value="remove">
        <input type="hidden" name="productId" value="<%= item.getProductId() %>">
        <button style="background:black; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer; font-size:16px;">Remove</button>
    </form>

</div>

<%
    } // end for loop
%>

<!-- Back to Products button appears once, after all items -->
<div style="text-align:center; margin:20px 0;">
    <form action="products">
        <button type="submit"
                style="background:#4B0082; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer; font-size:16px;">
            Back to Products
        </button>
    </form>

</div>

<h2 style="text-align:right;">Total: ₹<%= total %></h2>

<%
    } // end else
%>

<form action="logout">
    <button type="submit"
            style="background:#4B0082; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer; font-size:16px;">
        Logout
    </button>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);



    %>

</form>

</body>
</html>