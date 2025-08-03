<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.User.UserDetails" %>

<!-- ----code Start for (this page will not be open without Login) -->
<%
    UserDetails user2 = (UserDetails) session.getAttribute("userD");
    if (user2 == null) {
        session.setAttribute("login-error", "Please login first...!!!");
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome page</title>
    <%@ include file="all_component/allcss.jsp" %>
</head>
<body>

    <!-- Navbar include -->
    <%@ include file="all_component/navbar.jsp" %>

    <!-- Main content -->
    <div class="container-fluid p-0">
        <div class="card py-5">
            <div class="card-body text-center">
                <img src="imgae/well.jpg" class="img-fluid mx-auto" style="max-width: 300px;" alt="Welcome Image">
                <h1>Start Your Notes</h1>
                <a href="addNotes.jsp" class="btn btn-outline-primary mt-3">Add Your Notes</a>
            </div>
        </div>
    </div>

    <!-- Optional Footer -->
    <div class="text-center mt-3 text-muted">
        <p>&copy; 2025 E-Notes Application</p>
    </div>

</body>
</html>
