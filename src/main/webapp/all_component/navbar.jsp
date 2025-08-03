<%@page import="com.User.UserDetails"%>

<!-- Font Awesome CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fas fa-book"></i> NotesApp</a>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="welcom.jsp"><i class="fas fa-home"></i> Home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="showNotes.jsp"><i class="fas fa-eye"></i> Show Notes</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="addNotes.jsp"><i class="fas fa-plus-circle"></i> Add Notes</a>
			</li>
		</ul>

		<%
			UserDetails user = (UserDetails) session.getAttribute("userD");
			if (user != null) {
		%>

		<a class="btn btn-outline-info my-2 my-sm-0 me-2" data-toggle="modal" data-target="#exampleModal">
			<i class="fas fa-user-circle"></i> <%=user.getName()%>
		</a>
		<a class="btn btn-outline-danger my-2 my-sm-0" href="LogoutServlet">
			<i class="fas fa-sign-out-alt"></i> Logout
		</a>

		<%
			} else {
		%>

		<a class="btn btn-outline-success my-2 my-sm-0 me-2" href="login.jsp">
			<i class="fas fa-sign-in-alt"></i> Login
		</a>
		<a class="btn btn-outline-warning my-2 my-sm-0" href="register.jsp">
			<i class="fas fa-user-plus"></i> Register
		</a>

		<%
			}
		%>
	</div>
</nav>

