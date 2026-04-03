<%--
  Created by IntelliJ IDEA.
  User: S.Sanjay
  Date: 23-03-2026
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body style="margin:0; padding:0; font-family: 'Poppins', Arial, sans-serif; background: lavender;">
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

%>

<!-- Center Container -->
<div style="display:flex; justify-content:center; align-items:center; height:100vh;">

    <!-- Login Card -->
    <div style="background:white; padding:40px; border-radius:15px; width:350px;
                    box-shadow: 0 8px 20px rgba(0,0,0,0.2); text-align:center;">

        <!-- Title -->
        <h1 style="color:#6a5acd; margin-bottom:10px;">Welcome Back</h1>
        <p style="color:gray; margin-bottom:30px;">Login to your eCommerce account</p>

        <!-- Form -->
        <form action="Login">

            <!-- Username -->
            <input type="text" name="uname" placeholder="Enter Username" required
                   style="width:100%; padding:12px; margin-bottom:15px;
                           border-radius:8px; border:1px solid #ccc; font-size:14px;">

            <!-- Password -->
            <input type="password" name="pass" placeholder="Enter Password" required
                   style="width:100%; padding:12px; margin-bottom:20px;
                           border-radius:8px; border:1px solid #ccc; font-size:14px;">

            <!-- Login Button -->
            <button type="submit"
                    style="width:100%; padding:12px; background:#6a5acd; color:white;
                           border:none; border-radius:8px; font-size:16px; cursor:pointer;">
                Login
            </button>

            <!-- Extra Links -->


            <p style="margin-top:10px; font-size:14px;">
                New user?
                <a href="register.jsp" style="color:#6a5acd; text-decoration:none;">
                    Create Account
                </a>
            </p>

        </form>
    </div>
</div>

</body>
</html>
