<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <%@ include file="../components/allcss.jsp" %>
</head>
<body>

    <%@ include file="admin_navbar.jsp" %>

  <h1 class="text-center" style="color: #1c2841; font-weight: bold;">Admin Dashboard</h1>


  
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <!-- First image -->
            <div class="carousel-item active" data-bs-interval="5000">
                <img src="../img/admin_image.jpg" class="d-block w-100" alt="Image 1" height="700px" width="1500px">
            </div>
            <!-- Second image -->
            <div class="carousel-item" data-bs-interval="2000">
                <img src="../img/admin_image2.jpg" class="d-block w-100" alt="Image 2" height="700px" width="1500px">
            </div>
            <!-- Third image -->
            <div class="carousel-item">
                <img src="../img/admin_image3.jpg" class="d-block w-100" alt="Image 3" height="700px" width="1500px">
            </div>
        </div>
    </div>


    
    <%
        User adminObj = (User) session.getAttribute("adminObj");
        if (adminObj == null) {
            response.sendRedirect("../Admin_login.jsp");
        }
    %>


</body>
</html>
