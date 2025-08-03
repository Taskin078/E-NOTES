<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.User.UserDetails" %>

<%
    UserDetails user1 = (UserDetails) session.getAttribute("userD");
    if (user1 == null) {
        session.setAttribute("login-error", "please login First....!!!");
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Notes</title>
    <%@ include file="all_component/allcss.jsp" %>
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #ffffff);
        }
        .note-form {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 50px;
        }
        h1 {
            color: #00796b;
            font-weight: bold;
        }
        label {
            font-weight: 500;
            color: #333;
        }
        .btn-primary {
            background-color: #00796b;
            border: none;
        }
        .btn-primary:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>

    <%@ include file="all_component/navbar.jsp" %>

    <div class="container">
        <h1 class="text-center mt-4">✍️ Add Your Notes</h1>

        <div class="row justify-content-center">
            <div class="col-md-8 note-form">
                <form action="AddNotesServlet" method="post">
                    
                    <div class="form-group">
                        <label for="title">📌 Enter Title</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>

                    <div class="form-group mt-3">
                        <label for="content">📝 Enter Content</label>
                        <textarea rows="9" class="form-control" id="content" name="content" required></textarea>
                    </div>

                    <div class="text-center mt-4">
                        <button type="submit" class="btn btn-primary btn-lg">➕ Add Note</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%@ include file="all_component/footer.jsp" %>

</body>
</html>
