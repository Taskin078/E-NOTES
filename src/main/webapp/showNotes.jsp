<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.User.Post"%>
<%@page import="com.User.UserDetails"%>

<%
    UserDetails user1 = (UserDetails) session.getAttribute("userD");
    if (user1 == null) {
        session.setAttribute("login-error", "Please Login First...!!!");
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!-- Include common header and navbar -->
<jsp:include page="all_component/allcss.jsp" />
<jsp:include page="all_component/navbar.jsp" />

<div class="container">
    <h1 class="text-center">Show Notes Page</h1>

    <%
        PostDAO postDao = new PostDAO(DBConnect.getConn());
        List<Post> postList = postDao.getData(user1.getId());

        if (postList != null && !postList.isEmpty()) {
            int count = 0;
            for (Post po : postList) {
                if (count % 3 == 0) {
    %>
                    <div class="row mt-3">
    <%
                }
    %>
                        <div class="col-md-4 mt-3">
                            <div class="card shadow-lg" style="width: 18rem;">
                                <div class="card-body">
                                    
                                    <p class="card-text">Content: <%= po.getContent() %></p>
                                    <p><b>Upload By:</b> <%= user1.getName() %></p>
                                    <p><b>Upload Date:</b> <%= po.getPdate() %></p>
                                    <a href="delete?id=<%= po.getId() %>" class="btn btn-danger btn-sm">Delete</a>
                                    <a href="edit.jsp?id=<%= po.getId() %>" class="btn btn-primary btn-sm">Edit</a>
                                </div>
                            </div>
                        </div>
    <%
                count++;
                if (count % 3 == 0) {
    %>
                    </div>
    <%
                }
            }
            if (count % 3 != 0) {
    %>
                </div>
    <%
            }
        } else {
    %>
        <h4 class="text-center text-danger mt-3">No Notes Found</h4>
    <%
        }
    %>
</div>

<!-- Properly closed footer include tag -->
<jsp:include page="all_component/footer.jsp" />
